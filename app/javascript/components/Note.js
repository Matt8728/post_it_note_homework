import React from "react";

const Note = (props) => {
  const { title, author, description } = props.note;
  return (
    <>
      <h1>{title}</h1>
      <p>{author}</p>
      <p>{description}</p>
    </>
  );
};
export default Note;