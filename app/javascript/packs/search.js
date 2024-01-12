import consumer from "./consumer";

document.addEventListener("turbolinks:load", () => {
  const searchForm = document.getElementById("search-form");
  const searchInput = document.getElementById("search-input");

  if (searchForm) {
    searchForm.addEventListener("submit", (event) => {
      event.preventDefault();
      const query = searchInput.value.trim();

      if (query) {
        consumer.subscriptions.create({ channel: "SearchChannel", query: query });
      }
    });
  }

  consumer.subscriptions.create("SearchChannel", {
    received(data) {
      const searchResults = document.getElementById("search-results");
      searchResults.insertAdjacentHTML("afterbegin", `<p>${data.query}</p>`);
    },
  });
});

console.log('wowrking')