.class public Lit/unina/androidripper/strategy/Resources;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Lit/unina/androidripper/model/ResourceFile;


# static fields
.field public static AFTER_EVENT_DONT_EXPLORE:[Ljava/lang/String;

.field public static AFTER_WIDGET_DONT_EXPLORE:[I

.field public static CHECK_FOR_TRANSITION:Z

.field public static EXPLORE_ONLY_NEW_STATES:Z

.field public static MAX_NUM_TRACES:I

.field public static MAX_TIME_CRAWLING:J

.field public static PAUSE_AFTER_TIME:J

.field public static PAUSE_AFTER_TRACES:I

.field public static TRACE_MAX_DEPTH:I

.field public static TRACE_MIN_DEPTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9
    sput v1, Lit/unina/androidripper/strategy/Resources;->MAX_NUM_TRACES:I

    .line 10
    sput v0, Lit/unina/androidripper/strategy/Resources;->PAUSE_AFTER_TRACES:I

    .line 11
    sput-wide v2, Lit/unina/androidripper/strategy/Resources;->MAX_TIME_CRAWLING:J

    .line 12
    sput-wide v2, Lit/unina/androidripper/strategy/Resources;->PAUSE_AFTER_TIME:J

    .line 13
    sput v1, Lit/unina/androidripper/strategy/Resources;->TRACE_MAX_DEPTH:I

    .line 14
    sput v1, Lit/unina/androidripper/strategy/Resources;->TRACE_MIN_DEPTH:I

    .line 15
    sput-boolean v1, Lit/unina/androidripper/strategy/Resources;->CHECK_FOR_TRANSITION:Z

    .line 16
    sput-boolean v0, Lit/unina/androidripper/strategy/Resources;->EXPLORE_ONLY_NEW_STATES:Z

    .line 17
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lit/unina/androidripper/strategy/Resources;->AFTER_EVENT_DONT_EXPLORE:[Ljava/lang/String;

    .line 18
    new-array v0, v1, [I

    sput-object v0, Lit/unina/androidripper/strategy/Resources;->AFTER_WIDGET_DONT_EXPLORE:[I

    .line 21
    const-string v0, "strategy"

    const-class v1, Lit/unina/androidripper/strategy/Resources;

    invoke-static {v0, v1}, Lit/unina/androidripper/Prefs;->updateNode(Ljava/lang/String;Ljava/lang/Class;)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
