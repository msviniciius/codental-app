document.addEventListener('DOMContentLoaded', function() {
  var consumer = ActionCable.createConsumer();
  window.consumer = consumer;

  consumer.subscriptions.create("ClientsStatisticsChannel", {
    received(data) {
      document.getElementById("total_clients").innerText = data.total_clients;
      document.getElementById("duplicate_phones").innerText = Object.entries(data.duplicate_phones).map(([phone, count]) => `${phone}: ${count}`).join(', ');
      document.getElementById("clients_by_state").innerText = Object.entries(data.clients_by_state).map(([state, count]) => `${state}: ${count}`).join(', ');
    }
  });
});
