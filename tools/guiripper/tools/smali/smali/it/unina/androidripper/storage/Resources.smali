.class public Lit/unina/androidripper/storage/Resources;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Lit/unina/androidripper/model/ResourceFile;


# static fields
.field public static ACTIVITY_LIST_FILE_NAME:Ljava/lang/String;

.field public static FILE_NAME:Ljava/lang/String;

.field public static MAX_TRACES_IN_RAM:I

.field public static ONLY_FINALTRANSITION:Z

.field public static PARAMETERS_FILE_NAME:Ljava/lang/String;

.field public static TASK_LIST_FILE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const/4 v0, 0x1

    sput v0, Lit/unina/androidripper/storage/Resources;->MAX_TRACES_IN_RAM:I

    .line 10
    const-string v0, "tasklist.xml"

    sput-object v0, Lit/unina/androidripper/storage/Resources;->TASK_LIST_FILE_NAME:Ljava/lang/String;

    .line 11
    const-string v0, "activities.xml"

    sput-object v0, Lit/unina/androidripper/storage/Resources;->ACTIVITY_LIST_FILE_NAME:Ljava/lang/String;

    .line 12
    const-string v0, "parameters.obj"

    sput-object v0, Lit/unina/androidripper/storage/Resources;->PARAMETERS_FILE_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "guitree.xml"

    sput-object v0, Lit/unina/androidripper/storage/Resources;->FILE_NAME:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lit/unina/androidripper/storage/Resources;->ONLY_FINALTRANSITION:Z

    .line 17
    const-string v0, "storage"

    const-class v1, Lit/unina/androidripper/storage/Resources;

    invoke-static {v0, v1}, Lit/unina/androidripper/Prefs;->updateNode(Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
