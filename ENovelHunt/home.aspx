<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ENovelHunt.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        #novel-container {
    padding: 10px;
    margin: auto;
  }

  .row {
    padding: 10px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
  }

  .novel {
    width: 18%;
    margin-bottom: 20px;
    margin-top: 20px;
    text-align: center;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }

  .novel h3 {
      font-size:x-large;
      font-weight:bold;
      padding:20px;
     font-family: 'Charmonman', cursive;
   
  }

  .read-more:hover {
    background-color: #b27092;
    color: #512d38;
    padding: 5px 10px;
    text-decoration: none;
  }

  .read-more {
    background-color: #512d38;
    color: #fff;
    padding: 15px;
    text-decoration: none;
    border-radius: 10px;
  }

  .novel img {
        border-radius: 8px;

   width:100%;
  height: 350px;
  object-fit: fill;
  object-position: center;
    max-height: 400px;

  }

  .genre-heading {
    text-align: center;
    font-weight: bold;
    text-shadow: 10px 10px 10px #512d38;
    font-family: 'Courgette', cursive;
    font-size: 3em;
    padding-bottom: 10px;
    padding-top: 10px;
    margin-bottom: 5px;
    margin-top: 5px;
  }

  .even-row {
    background-color: #efd0ca;
  }

  .odd-row {
    background-color: #ddc0db;
  }
    </style>

   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="novel-container"></div>



 <script>
  const novels = [
    { title: 'Harry Potter', image: 'images/n1.jpg', link: 'http://www.passuneb.com/elibrary/ebooks/Harry%20Potter%20and%20The%20Sorcerer%E2%80%99s%20Stone.pdf', genre: 'Fantasy' },
    { title: 'Game of Thrones', image: 'images/n2.jpg', link: 'https://drive.google.com/drive/folders/0B5oIn4Aw7kojfi12TzFxckZrV1NvanZfQjN3ZWpyRkxUUjBtUzVrZ1c3M1dqS1otaTVBekk?resourcekey=0-v_Ue0nY4W4mK-Z1h-Cqy6A' , genre: 'Fantasy'},
    { title: 'Name of the Wind', image: 'images/n3.jpg', link: 'novel1.html', genre: 'Fantasy' },
    { title: 'The Chronicles of Narnia', image: 'images/n4.jpg', link: 'novel2.html' , genre: 'Fantasy'},
    { title: 'The Hobbit', image: 'images/n5.jpg', link: 'novel1.html' , genre: 'Fantasy'},
    { title: 'Gone Girl', image: 'images/n6.jpg', link: 'novel1.html' , genre: 'Mystery/Thriller'},
    { title: 'The Silver Chair', image: 'images/n8.jpg', link: 'https://drive.google.com/drive/folders/1TFSDfWoKDatgKHb9wxs-r5sRijuWzSb8', genre: 'Mystery/Thriller' },
        { title: 'The Last Battle', image: 'images/n7.jpg', link: 'https://drive.google.com/drive/folders/1TFSDfWoKDatgKHb9wxs-r5sRijuWzSb8' , genre: 'Mystery/Thriller'},
{ title: 'The Girl on the Train', image: 'images/n9.jpg', link: 'novel2.html' , genre: 'Mystery/Thriller'},
    { title: 'Inferno', image: 'images/n10.jpg', link: 'novel1.html' , genre: 'Mystery/Thriller'},
    { title: 'Pride and Prejudice', image: 'images/tbook1.jpg', link: 'novel1.html' , genre: 'Romance'},
    { title: 'The Notebook', image: 'images/tbook2.jpg', link: 'novel2.html' , genre: 'Romance'},
    { title: 'Outlender', image: 'images/tbook3.jpg', link: 'novel1.html' , genre: 'Romance'},
    { title: 'Me Before You', image: 'images/tbook4.jpg', link: 'novel2.html' , genre: 'Romance'},
      { title: 'The Fault in Our Stars', image: 'images/tbook5.jpg', link: 'novel1.html', genre: 'Romance' },
          { title: '"Dune"', image: 'images/tbook1.jpg', link: 'novel1.html' , genre: 'Science Fiction'},
    { title: '"1984" ', image: 'images/tbook2.jpg', link: 'novel2.html' , genre: 'Science Fiction'},
    { title: 'Ender\'s Game', image: 'images/tbook3.jpg', link: 'novel1.html' , genre: 'Science Fiction'},
    { title: '"Ready Player One"', image: 'images/tbook4.jpg', link: 'novel2.html' , genre: 'Science Fiction'},
      { title: 'The Martian', image: 'images/tbook5.jpg', link: 'novel1.html', genre: 'Science Fiction' }


  ];

  // Function to generate HTML for novels
  function generateNovels() {
    const novelContainer = document.getElementById('novel-container');

    let row = document.createElement('div');
    row.classList.add('row');

    let genre = '';
      let rowNumber = 1;
    novels.forEach((novel, index) => {
      if (index !== 0 && index % 5 === 0) {
      // Insert the genre heading before appending the row
      const headingElement = document.createElement('h1');
      headingElement.textContent = genre;
      headingElement.classList.add('genre-heading');
      novelContainer.appendChild(headingElement);

      // Apply even-row or odd-row class based on row number
      if (rowNumber % 2 === 0) {
        row.classList.add('even-row');
      } else {
        row.classList.add('odd-row');
      }

      novelContainer.appendChild(row);
      row = document.createElement('div');
      row.classList.add('row');
      rowNumber++;
    }

      const novelElement = document.createElement('div');
      novelElement.classList.add('novel');

      const imageElement = document.createElement('img');
      imageElement.src = novel.image;
      novelElement.appendChild(imageElement);

      const titleElement = document.createElement('h3');
      titleElement.textContent = novel.title;
      novelElement.appendChild(titleElement);

      const readMoreElement = document.createElement('a');
      readMoreElement.href = novel.link;
      readMoreElement.textContent = 'Read More';
      readMoreElement.classList.add('read-more');
      novelElement.appendChild(readMoreElement);

      row.appendChild(novelElement);

      // Store the genre of the first novel in the row
      if (index % 5 === 0) {
        genre = novel.genre;
      }
    });

  // Append the last row if it has fewer than 5 novels
    if (row.childNodes.length > 0) {
      // Apply even-row or odd-row class based on row number
      if (rowNumber % 2 === 0) {
        row.classList.add('even-row');
      } else {
        row.classList.add('odd-row');
      }

      // Insert the genre heading before appending the row
      const headingElement = document.createElement('h2');
      headingElement.textContent = genre;
      headingElement.classList.add('genre-heading');
      novelContainer.appendChild(headingElement);

      novelContainer.appendChild(row);
    }

  }

  // Call the function to generate novels
  generateNovels();
</script>

</asp:Content>
