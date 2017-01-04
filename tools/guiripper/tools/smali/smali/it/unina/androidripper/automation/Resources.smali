.class public Lit/unina/androidripper/automation/Resources;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Lit/unina/androidripper/model/ResourceFile;


# static fields
.field public static FORCE_RESTART:Z

.field public static IN_AND_OUT_FOCUS:Z

.field public static PRECRAWLING:[Ljava/lang/String;

.field public static SCREENSHOT_FOR_EVENTS:Z

.field public static SCREENSHOT_FOR_STATES:Z

.field public static SCREENSHOT_ONLY_NEW_STATES:Z

.field public static SLEEP_AFTER_EVENT:I

.field public static SLEEP_AFTER_RESTART:I

.field public static SLEEP_AFTER_TASK:I

.field public static SLEEP_ON_THROBBER:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x3e8

    .line 9
    sput v0, Lit/unina/androidripper/automation/Resources;->SLEEP_AFTER_EVENT:I

    .line 10
    sput v0, Lit/unina/androidripper/automation/Resources;->SLEEP_AFTER_RESTART:I

    .line 11
    sput v0, Lit/unina/androidripper/automation/Resources;->SLEEP_ON_THROBBER:I

    .line 12
    sput v0, Lit/unina/androidripper/automation/Resources;->SLEEP_AFTER_TASK:I

    .line 14
    sput-boolean v1, Lit/unina/androidripper/automation/Resources;->FORCE_RESTART:Z

    .line 15
    sput-boolean v2, Lit/unina/androidripper/automation/Resources;->IN_AND_OUT_FOCUS:Z

    .line 17
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lit/unina/androidripper/automation/Resources;->PRECRAWLING:[Ljava/lang/String;

    .line 20
    sput-boolean v2, Lit/unina/androidripper/automation/Resources;->SCREENSHOT_FOR_STATES:Z

    .line 21
    sput-boolean v2, Lit/unina/androidripper/automation/Resources;->SCREENSHOT_FOR_EVENTS:Z

    .line 22
    sput-boolean v1, Lit/unina/androidripper/automation/Resources;->SCREENSHOT_ONLY_NEW_STATES:Z

    .line 25
    const-string v0, "automation"

    const-class v1, Lit/unina/androidripper/automation/Resources;

    invoke-static {v0, v1}, Lit/unina/androidripper/Prefs;->updateNode(Ljava/lang/String;Ljava/lang/Class;)V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
