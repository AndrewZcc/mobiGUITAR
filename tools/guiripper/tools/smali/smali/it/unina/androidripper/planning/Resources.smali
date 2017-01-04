.class public Lit/unina/androidripper/planning/Resources;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Lit/unina/androidripper/model/ResourceFile;


# static fields
.field public static ACTIONBARHOME_EVENTS:Z

.field public static ALL_EVENTS_ON_PREFERENCES:Z

.field public static BACK_BUTTON_EVENT:Z

.field public static DICTIONARY_FIXED_VALUE:Z

.field public static DICTIONARY_IGNORE_CONTENT_TYPES:Z

.field public static EMULATOR_PORT:I

.field public static EVENTS:[Ljava/lang/String;

.field public static EVENT_WHEN_NO_ID:Z

.field public static EXCLUDE_WIDGETS_INPUTS_IN_GPS_EVENTS:Z

.field public static EXCLUDE_WIDGETS_INPUTS_IN_SENSORS_EVENTS:Z

.field public static FIX_GPS_POSITION:Z

.field public static INPUTS:[Ljava/lang/String;

.field public static KEY_EVENTS:[I

.field public static MAX_EVENTS_PER_WIDGET:I

.field public static MAX_TASKS_IN_SCHEDULER:I

.field public static MAX_TASKS_PER_EVENT:I

.field public static MENU_EVENTS:Z

.field public static ORIENTATION_EVENTS:Z

.field public static PLANNER:Ljava/lang/String;

.field public static REFLECT_ACTIVITY_LISTENERS:Z

.field public static REFLECT_WIDGETS:Z

.field public static SCHEDULER_ALGORITHM:Ljava/lang/String;

.field public static SCROLL_DOWN_EVENT:Z

.field public static SENSOR_TYPES:[Ljava/lang/Integer;

.field public static SIMULATE_INCOMING_CALL:Z

.field public static SIMULATE_INCOMING_SMS:Z

.field public static TAB_EVENTS_START_ONLY:Z

.field public static TEST_LOCATION_PROVIDER:Ljava/lang/String;

.field public static TEXT_VALUES_FROM_DICTIONARY:Z

.field public static TEXT_VALUES_ID_HASH:Z

.field public static USE_GPS:Z

.field public static USE_SENSORS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 20
    const-string v5, "SimplePlanner"

    sput-object v5, Lit/unina/androidripper/planning/Resources;->PLANNER:Ljava/lang/String;

    .line 23
    sput-boolean v7, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_FROM_DICTIONARY:Z

    .line 29
    sput-boolean v7, Lit/unina/androidripper/planning/Resources;->DICTIONARY_FIXED_VALUE:Z

    .line 32
    sput-boolean v7, Lit/unina/androidripper/planning/Resources;->DICTIONARY_IGNORE_CONTENT_TYPES:Z

    .line 38
    sput-boolean v7, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_ID_HASH:Z

    .line 61
    sput v7, Lit/unina/androidripper/planning/Resources;->MAX_EVENTS_PER_WIDGET:I

    .line 62
    sput v8, Lit/unina/androidripper/planning/Resources;->MAX_TASKS_PER_EVENT:I

    .line 64
    sput-boolean v8, Lit/unina/androidripper/planning/Resources;->BACK_BUTTON_EVENT:Z

    .line 65
    sput-boolean v8, Lit/unina/androidripper/planning/Resources;->MENU_EVENTS:Z

    .line 66
    sput-boolean v7, Lit/unina/androidripper/planning/Resources;->ACTIONBARHOME_EVENTS:Z

    .line 67
    sput-boolean v8, Lit/unina/androidripper/planning/Resources;->ORIENTATION_EVENTS:Z

    .line 68
    sput-boolean v7, Lit/unina/androidripper/planning/Resources;->SCROLL_DOWN_EVENT:Z

    .line 70
    sput-boolean v7, Lit/unina/androidripper/planning/Resources;->TAB_EVENTS_START_ONLY:Z

    .line 71
    sput-boolean v8, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    .line 72
    sput-boolean v8, Lit/unina/androidripper/planning/Resources;->ALL_EVENTS_ON_PREFERENCES:Z

    .line 74
    new-array v5, v7, [I

    sput-object v5, Lit/unina/androidripper/planning/Resources;->KEY_EVENTS:[I

    .line 77
    const-string v5, "BREADTH_FIRST"

    sput-object v5, Lit/unina/androidripper/planning/Resources;->SCHEDULER_ALGORITHM:Ljava/lang/String;

    .line 78
    sput v7, Lit/unina/androidripper/planning/Resources;->MAX_TASKS_IN_SCHEDULER:I

    .line 81
    sput-boolean v7, Lit/unina/androidripper/planning/Resources;->REFLECT_WIDGETS:Z

    .line 82
    sput-boolean v7, Lit/unina/androidripper/planning/Resources;->REFLECT_ACTIVITY_LISTENERS:Z

    .line 85
    sput-boolean v7, Lit/unina/androidripper/planning/Resources;->USE_SENSORS:Z

    .line 86
    sput-boolean v8, Lit/unina/androidripper/planning/Resources;->EXCLUDE_WIDGETS_INPUTS_IN_SENSORS_EVENTS:Z

    .line 89
    new-array v5, v7, [Ljava/lang/Integer;

    sput-object v5, Lit/unina/androidripper/planning/Resources;->SENSOR_TYPES:[Ljava/lang/Integer;

    .line 105
    sput-boolean v7, Lit/unina/androidripper/planning/Resources;->USE_GPS:Z

    .line 106
    sput-boolean v8, Lit/unina/androidripper/planning/Resources;->EXCLUDE_WIDGETS_INPUTS_IN_GPS_EVENTS:Z

    .line 107
    const-string v5, "gps"

    sput-object v5, Lit/unina/androidripper/planning/Resources;->TEST_LOCATION_PROVIDER:Ljava/lang/String;

    .line 108
    sput-boolean v8, Lit/unina/androidripper/planning/Resources;->FIX_GPS_POSITION:Z

    .line 111
    sput-boolean v7, Lit/unina/androidripper/planning/Resources;->SIMULATE_INCOMING_CALL:Z

    .line 112
    sput-boolean v7, Lit/unina/androidripper/planning/Resources;->SIMULATE_INCOMING_SMS:Z

    .line 115
    const/16 v5, 0x15b2

    sput v5, Lit/unina/androidripper/planning/Resources;->EMULATOR_PORT:I

    .line 119
    const-string v5, "scheduler"

    const-class v6, Lit/unina/androidripper/planning/Resources;

    invoke-static {v5, v6}, Lit/unina/androidripper/Prefs;->updateNode(Ljava/lang/String;Ljava/lang/Class;)V

    .line 120
    const-string v5, "planner"

    const-class v6, Lit/unina/androidripper/planning/Resources;

    invoke-static {v5, v6}, Lit/unina/androidripper/Prefs;->updateNode(Ljava/lang/String;Ljava/lang/Class;)V

    .line 121
    const-string v5, "interactions"

    const-class v6, Lit/unina/androidripper/planning/Resources;

    invoke-static {v5, v6}, Lit/unina/androidripper/Prefs;->updateNode(Ljava/lang/String;Ljava/lang/Class;)V

    .line 122
    sget-object v5, Lit/unina/androidripper/planning/Resources;->EVENTS:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 123
    invoke-static {}, Lit/unina/androidripper/planning/UserFactory;->resetEvents()V

    .line 124
    sget-object v0, Lit/unina/androidripper/planning/Resources;->EVENTS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 125
    .local v3, s:Ljava/lang/String;
    const-string v5, "( )?,( )?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, widgets:[Ljava/lang/String;
    aget-object v6, v4, v7

    array-length v5, v4

    invoke-static {v4, v8, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {v6, v5}, Lit/unina/androidripper/planning/UserFactory;->addEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #widgets:[Ljava/lang/String;
    :cond_0
    sget-object v5, Lit/unina/androidripper/planning/Resources;->INPUTS:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 130
    invoke-static {}, Lit/unina/androidripper/planning/UserFactory;->resetInputs()V

    .line 131
    sget-object v0, Lit/unina/androidripper/planning/Resources;->INPUTS:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 132
    .restart local v3       #s:Ljava/lang/String;
    const-string v5, "( )?,( )?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 133
    .restart local v4       #widgets:[Ljava/lang/String;
    aget-object v6, v4, v7

    array-length v5, v4

    invoke-static {v4, v8, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {v6, v5}, Lit/unina/androidripper/planning/UserFactory;->addInput(Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #widgets:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
