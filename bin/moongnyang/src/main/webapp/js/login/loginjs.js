function selectAll(selectAll)  {
  const checkboxes 
       = document.getElementsByName("animal");
  
  checkboxes.forEach((checkbox) => {
    checkbox.checked = selectAll.checked;
  })
}