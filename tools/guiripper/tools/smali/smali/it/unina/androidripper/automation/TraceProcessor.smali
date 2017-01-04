.class public Lit/unina/androidripper/automation/TraceProcessor;
.super Ljava/lang/Object;
.source "TraceProcessor.java"

# interfaces
.implements Lit/unina/androidripper/model/TaskProcessor;


# instance fields
.field private robot:Lit/unina/androidripper/model/Robot;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Robot;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lit/unina/androidripper/automation/TraceProcessor;->setRobot(Lit/unina/androidripper/model/Robot;)V

    .line 21
    return-void
.end method

.method private execute(Lcom/nofatclips/androidtesting/model/Transition;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 33
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/Transition;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/UserInput;

    .line 34
    .local v0, i:Lcom/nofatclips/androidtesting/model/UserInput;
    iget-object v2, p0, Lit/unina/androidripper/automation/TraceProcessor;->robot:Lit/unina/androidripper/model/Robot;

    invoke-interface {v2, v0}, Lit/unina/androidripper/model/Robot;->setInput(Lcom/nofatclips/androidtesting/model/UserInput;)V

    goto :goto_0

    .line 36
    .end local v0           #i:Lcom/nofatclips/androidtesting/model/UserInput;
    :cond_0
    iget-object v2, p0, Lit/unina/androidripper/automation/TraceProcessor;->robot:Lit/unina/androidripper/model/Robot;

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/Transition;->getEvent()Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lit/unina/androidripper/model/Robot;->fireEvent(Lcom/nofatclips/androidtesting/model/UserEvent;)V

    .line 37
    return-void
.end method


# virtual methods
.method public execute(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 3
    .parameter "trace"

    .prologue
    .line 26
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/Trace;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nofatclips/androidtesting/model/Transition;

    .line 27
    .local v1, t:Lcom/nofatclips/androidtesting/model/Transition;
    invoke-direct {p0, v1}, Lit/unina/androidripper/automation/TraceProcessor;->execute(Lcom/nofatclips/androidtesting/model/Transition;)V

    goto :goto_0

    .line 29
    .end local v1           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_0
    return-void
.end method

.method public setRobot(Lit/unina/androidripper/model/Robot;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 40
    iput-object p1, p0, Lit/unina/androidripper/automation/TraceProcessor;->robot:Lit/unina/androidripper/model/Robot;

    .line 41
    return-void
.end method
