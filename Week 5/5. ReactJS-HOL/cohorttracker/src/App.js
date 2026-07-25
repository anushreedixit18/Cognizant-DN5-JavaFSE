import "./App.css";
import CohortDetails from "./components/CohortDetails";

function App() {

  const cohorts = [
    {
      code: "INTADMDF10 -.NET FSD",
      startDate: "22-Feb-2022",
      status: "Scheduled",
      coach: "Aathma",
      trainer: "Irjo Jose"
    },
    {
      code: "ADM21JF014 - Java FSD",
      startDate: "10-Sep-2021",
      status: "Ongoing",
      coach: "Apoorv",
      trainer: "Elisa Smith"
    },
    {
      code: "CDBJF21025 - Java FSD",
      startDate: "24-Dec-2021",
      status: "Ongoing",
      coach: "Aathma",
      trainer: "John Doe"
    }
  ];

  return (
      <div style={{ margin: "30px" }}>
        <h1>Cohorts Details</h1>

        {cohorts.map((cohort, index) => (
            <CohortDetails
                key={index}
                cohort={cohort}
            />
        ))}
      </div>
  );
}

export default App;