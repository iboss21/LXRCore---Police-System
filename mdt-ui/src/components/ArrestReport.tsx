import React from "react";
import { useTranslation } from "react-i18next";

export default function ArrestReport({ userRole }) {
  const { t } = useTranslation();
  // Only officers/admins can submit arrest reports
  if (!["officer", "admin"].includes(userRole)) return null;

  return (
    <form aria-label={t("arrest_report")} tabIndex={0}>
      <label htmlFor="suspect">{t("citizen_profile")}</label>
      <input id="suspect" name="suspect" type="text" required />
      <label htmlFor="charges">{t("charges")}</label>
      <input id="charges" name="charges" type="text" required />
      <button type="submit">{t("save")}</button>
    </form>
  );
}