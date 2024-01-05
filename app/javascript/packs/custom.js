window.addEventListener('load', () => {
  const articlesContainer = document.querySelector('#articles')
  const articles = Array.of(articlesContainer.children)
  const searchBar = document.querySelector('#search')
  // const searches = document.querySelector('#searches')

  //TODO: enhance security 
  const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content')

  let timeOut
  searchBar.addEventListener('keyup', (e) => {
    const content = e.target.value.toLowerCase()
    const charCode = e.keyCode
    const alphabetKeys = (charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || charCode == 8
    clearTimeout(timeOut)
    timeOut = setTimeout(() => {
      if (content && alphabetKeys) {
        // fetch('/searches/', {
        //   method: 'POST',
        //   headers: {
        //     'Content-Type': 'application/json',
        //     'X-CSRF-Token': csrfToken,
        //   },
        //   body: JSON.stringify({ content })
        // })
        //   .then(res => res.json())
        //   .then(json => {
        //     // searches.innerHTML = ''
        //     // searches.append(...json.map(search => {
        //     //   const li = document.createElement('li')
        //     //   li.innerHTML = search.content
        //     //   return li
        //     // }))
        //   })
        fetch('/searches/create', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'X-CSRF-Token': csrfToken,
          },
          body: JSON.stringify({ content })
        })
      } else {
        searches.innerHTML = ''
      }
    }, 400)
  })
})
