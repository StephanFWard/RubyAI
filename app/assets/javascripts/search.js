document.addEventListener('DOMContentLoaded', function() {
  const searchForm = document.getElementById('search-form');
  const searchAndSaveLink = document.getElementById('search-and-save-link');

  searchForm.addEventListener('submit', function(event) {
    event.preventDefault(); // Prevent form submission

    const query = document.getElementById('query').value;
    const url = `/search_and_save?query=${encodeURIComponent(query)}`;
    searchAndSaveLink.setAttribute('href', url);
    searchAndSaveLink.click(); // Trigger the link click
  });
});