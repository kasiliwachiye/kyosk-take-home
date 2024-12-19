# Use an official Node.js LTS image as the build environment
FROM node:18-alpine as build

# Set working directory
WORKDIR /app

# Copy package files
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the source
COPY . .

# Build the application
RUN yarn build

# ---- Production Stage ----
  FROM nginx:stable-alpine

  # Copy build files from the build stage
  COPY --from=build /app/build /usr/share/nginx/html
  
  # Expose port 80
  EXPOSE 80
  
  # Start Nginx
  CMD ["nginx", "-g", "daemon off;"]
  