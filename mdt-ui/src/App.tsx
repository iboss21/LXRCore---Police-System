import React from "react";
import { useTranslation } from "react-i18next";
import CitizenSearch from "./components/CitizenSearch";
import CitationForm from "./components/CitationForm";
import AuditLog from "./components/AuditLog";
import ArrestReport from "./components/ArrestReport";
import WarrantSheet from "./components/WarrantSheet";
import EvidencePanel from "./components/EvidencePanel";

function App() {
  const { t } = useTranslation();

  return (
    <div className="min-h-screen bg-gray-100">
      <header className="bg-blue-900 text-white p-4 flex justify-between">
        <h1 className="text-2xl font-bold">{t("mdt_title")}</h1>
      </header>
      <main className="p-6 grid grid-cols-2 gap-6">
        <CitizenSearch />
        <CitationForm />
        <ArrestReport />
        <WarrantSheet />
        <EvidencePanel />
        <AuditLog />
      </main>
    </div>
  );
}

export default App;