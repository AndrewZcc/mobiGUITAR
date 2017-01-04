.class public Lit/unina/androidripper/Resources;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Lit/unina/androidripper/model/ResourceFile;


# static fields
.field public static ACTIVITY_DESCRIPTION_IN_SESSION:Z = false

.field public static ADDITIONAL_CRITERIAS:[Lit/unina/androidripper/model/StrategyCriteria; = null

.field public static ADDITIONAL_EVENTS:[Lit/unina/androidripper/planning/adapters/InteractorAdapter; = null

.field public static ADDITIONAL_INPUTS:[Lit/unina/androidripper/planning/adapters/InteractorAdapter; = null

.field public static CLASS_NAME:Ljava/lang/String; = null

.field public static final CRAWLER_PACKAGE:Ljava/lang/String; = "it.unina.androidripper"

.field public static ENABLE_MODEL:Z = false

.field public static ENABLE_RESUME:Z = false

.field public static INTENT_ACTION:Ljava/lang/String; = null

.field public static INTENT_ACTIVITY:Ljava/lang/String; = null

.field public static INTENT_CATEGORY:Ljava/lang/String; = null

.field public static INTENT_DATA:Ljava/lang/String; = null

.field public static INTENT_FLAGS:Ljava/lang/String; = null

.field public static INTENT_TYPE:Ljava/lang/String; = null

.field public static PACKAGE_NAME:Ljava/lang/String; = null

.field public static final PREFERENCES_FILE:Ljava/lang/String; = "preferences.xml"

.field public static RANDOM_SEED:J = 0x0L

.field public static RETRY_FAILED_TRACES:Z = false

.field public static final XML_BODY_BEGIN:Ljava/lang/String; = "    <TRACE"

.field public static final XML_BODY_END:Ljava/lang/String; = "/TRACE>"

.field public static theClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 25
    const-string v1, "app.package"

    sput-object v1, Lit/unina/androidripper/Resources;->PACKAGE_NAME:Ljava/lang/String;

    .line 26
    const-string v1, "app.package.class"

    sput-object v1, Lit/unina/androidripper/Resources;->CLASS_NAME:Ljava/lang/String;

    .line 27
    new-array v1, v3, [Lit/unina/androidripper/model/StrategyCriteria;

    sput-object v1, Lit/unina/androidripper/Resources;->ADDITIONAL_CRITERIAS:[Lit/unina/androidripper/model/StrategyCriteria;

    .line 28
    new-array v1, v3, [Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    sput-object v1, Lit/unina/androidripper/Resources;->ADDITIONAL_EVENTS:[Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    .line 29
    new-array v1, v3, [Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    sput-object v1, Lit/unina/androidripper/Resources;->ADDITIONAL_INPUTS:[Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    .line 33
    sput-boolean v2, Lit/unina/androidripper/Resources;->ENABLE_RESUME:Z

    .line 34
    sput-boolean v2, Lit/unina/androidripper/Resources;->ENABLE_MODEL:Z

    .line 35
    const-wide v1, 0x4bdcf7cdf3cc80b3L

    sput-wide v1, Lit/unina/androidripper/Resources;->RANDOM_SEED:J

    .line 36
    sput-boolean v3, Lit/unina/androidripper/Resources;->ACTIVITY_DESCRIPTION_IN_SESSION:Z

    .line 37
    sput-boolean v3, Lit/unina/androidripper/Resources;->RETRY_FAILED_TRACES:Z

    .line 42
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v1, Lit/unina/androidripper/Resources;->INTENT_ACTION:Ljava/lang/String;

    .line 43
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v1, Lit/unina/androidripper/Resources;->INTENT_CATEGORY:Ljava/lang/String;

    .line 44
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v1, Lit/unina/androidripper/Resources;->INTENT_TYPE:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v1, Lit/unina/androidripper/Resources;->INTENT_FLAGS:Ljava/lang/String;

    .line 46
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v1, Lit/unina/androidripper/Resources;->INTENT_ACTIVITY:Ljava/lang/String;

    .line 47
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v1, Lit/unina/androidripper/Resources;->INTENT_DATA:Ljava/lang/String;

    .line 52
    const-string v1, "it.unina.androidripper"

    invoke-static {v1}, Lit/unina/androidripper/Prefs;->setMainNode(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lit/unina/androidripper/Prefs;->updateMainNode()V

    .line 56
    :try_start_0
    sget-object v1, Lit/unina/androidripper/Resources;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lit/unina/androidripper/Resources;->theClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
