import React from "react";
import {
  Container,
  Typography,
  List,
  ListItem,
  ListItemText,
} from "@mui/material";
import { books } from "./books";

const App: React.FC = () => {
  return (
    <Container>
      <Typography variant="h4" gutterBottom>
        Book List
      </Typography>
      <List>
        {books.map((book, index) => (
          <ListItem key={index} divider>
            <ListItemText primary={book.title} secondary={book.author} />
          </ListItem>
        ))}
      </List>
    </Container>
  );
};
export default App;
