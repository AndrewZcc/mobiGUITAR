.class public final enum Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;
.super Ljava/lang/Enum;
.source "TraceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/unina/androidripper/planning/TraceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SchedulerAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

.field public static final enum BREADTH_FIRST:Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

.field public static final enum DEPTH_FIRST:Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    const-string v1, "BREADTH_FIRST"

    invoke-direct {v0, v1, v2}, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->BREADTH_FIRST:Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    new-instance v0, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    const-string v1, "DEPTH_FIRST"

    invoke-direct {v0, v1, v3}, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->DEPTH_FIRST:Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    sget-object v1, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->BREADTH_FIRST:Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->DEPTH_FIRST:Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    aput-object v1, v0, v3

    sput-object v0, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->$VALUES:[Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    return-object v0
.end method

.method public static values()[Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->$VALUES:[Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    invoke-virtual {v0}, [Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    return-object v0
.end method
