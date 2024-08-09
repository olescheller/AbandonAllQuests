local ADDON_NAME, namespace = ...

local locale = GetLocale();

local translations = {}
translations.enUS = {
    MAP_BUTTON_LABEL = "Abandon all quests",
    ABANDON_DIALOG_QUESTION = "Are you sure you want to abandon all quests?",
    ABANDON_QUEST_SUCCESS = "Abandoned quest: %s",
    SKIPPED_QUEST = "Skipped quest: %s",
}

translations.deDE = {
    MAP_BUTTON_LABEL = "Alle Quests abbrechen",
    ABANDON_DIALOG_QUESTION = "Bist du sicher, dass du alle Quests abbrechen willst?",
    ABANDON_QUEST_SUCCESS = "Quest abgebrochen: %s",
		SKIPPED_QUEST = "Quest übersprungen: %s",
}

function AbandonAllQuests_GetTranslation(key) 
    return translations[locale][key] or translations["enUS"][key]
end

namespace.AbandonAllQuests_GetTranslation = AbandonAllQuests_GetTranslation;