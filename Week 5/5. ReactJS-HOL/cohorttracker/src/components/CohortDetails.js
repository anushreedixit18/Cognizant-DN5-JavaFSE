import styles from "./CohortDetails.module.css";

function CohortDetails({ cohort }) {
    return (
        <div className={styles.box}>
            <h3
                className={
                    cohort.status === "Ongoing"
                        ? styles.green
                        : styles.blue
                }
            >
                {cohort.code}
            </h3>

            <p><b>Started On</b><br />{cohort.startDate}</p>

            <p><b>Current Status</b><br />{cohort.status}</p>

            <p><b>Coach</b><br />{cohort.coach}</p>

            <p><b>Trainer</b><br />{cohort.trainer}</p>
        </div>
    );
}

export default CohortDetails;