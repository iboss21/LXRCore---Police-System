import React from "react";
import { useTranslation } from "react-i18next";

export default function MDTMenu({ userRole }) {
  const { t } = useTranslation();

  return (
    <nav>
      <ul>
        <li><button tabIndex={0}>{t("citizen_profile")}</button></li>
        {["officer", "admin"].includes(userRole) && (
          <>
            <li><button tabIndex={0}>{t("warrant_active")}</button></li>
            <li><button tabIndex={0}>{t("arrest_report")}</button></li>
            <li><button tabIndex={0}>{t("citation")}</button></li>
          </>
        )}
        {userRole === "admin" && (
          <li><button tabIndex={0}>{t("audit_log")}</button></li>
        )}
      </ul>
      <div aria-live="polite" role="status">{t("accessibility_tip")}</div>
    </nav>
  );
}