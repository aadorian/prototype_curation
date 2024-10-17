%Online execution : https://swish.swi-prolog.org

% Entities
entity(qualitative_research_project, "Interview Study on User Experience").
entity(interview_protocol, "Interview Protocol").
entity(research_design, "Research Design").
entity(interview_transcripts, "Interview Transcripts").

% Agents
agent(dr_jane_doe, person, "Dr. Jane Doe").
agent(research_team, organization, "Research Team").
agent(research_assistant, person, "Research Assistant").

% Activities
activity(data_collection, "Data Collection", "2024-10-01T09:00:00Z", "2024-10-15T17:00:00Z").
activity(transcription, "Transcription", _, _).

% Relationships
was_generated_by(qualitative_research_project, data_collection, "2024-10-17T10:00:00Z").
was_generated_by(interview_transcripts, transcription, _).

was_associated_with(data_collection, dr_jane_doe).
was_associated_with(transcription, research_assistant).

was_attributed_to(qualitative_research_project, research_team).
was_attributed_to(research_design, research_team).

was_derived_from(interview_protocol, research_design).
was_derived_from(qualitative_research_project, interview_transcripts).

used(data_collection, interview_protocol).