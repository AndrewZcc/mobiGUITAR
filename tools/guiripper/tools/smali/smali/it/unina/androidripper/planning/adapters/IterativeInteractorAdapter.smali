.class public abstract Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;
.super Lit/unina/androidripper/planning/adapters/InteractorAdapter;
.source "IterativeInteractorAdapter.java"


# instance fields
.field private maxEventsPerWidget:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "maxItems"

    .prologue
    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;-><init>([Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->setMaxEventsPerWidget(I)V

    .line 24
    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 0
    .parameter "maxItems"
    .parameter "simpleTypes"

    .prologue
    .line 31
    invoke-direct {p0, p2}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;-><init>([Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->setMaxEventsPerWidget(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;)V
    .locals 1
    .parameter "theAbstractor"

    .prologue
    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;I)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "maxItems"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;)V

    .line 41
    invoke-virtual {p0, p2}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->setMaxEventsPerWidget(I)V

    .line 42
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;I[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "maxItems"
    .parameter "simpleTypes"

    .prologue
    .line 45
    invoke-direct {p0, p1, p3}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p2}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->setMaxEventsPerWidget(I)V

    .line 47
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "simpleTypes"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "simpleTypes"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;-><init>([Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getEvents(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;
    .locals 8
    .parameter "w"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/WidgetState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserEvent;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nofatclips/androidtesting/model/UserEvent;>;"
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    const/4 v1, 0x1

    .line 54
    .local v1, fromItem:I
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getCount()I

    move-result v4

    invoke-virtual {p0, p1, v7, v4}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->getToItem(Lcom/nofatclips/androidtesting/model/WidgetState;II)I

    move-result v3

    .line 55
    .local v3, toItem:I
    if-ge v3, v7, :cond_1

    .line 61
    .end local v1           #fromItem:I
    .end local v3           #toItem:I
    :cond_0
    return-object v0

    .line 56
    .restart local v1       #fromItem:I
    .restart local v3       #toItem:I
    :cond_1
    const-string v4, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->getInteractionType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for items ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-gt v2, v3, :cond_0

    .line 58
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->generateEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getMaxEventsPerWidget()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->maxEventsPerWidget:I

    return v0
.end method

.method public getMaxEventsPerWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)I
    .locals 1
    .parameter "w"

    .prologue
    .line 77
    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->getMaxEventsPerWidget()I

    move-result v0

    return v0
.end method

.method public getToItem(II)I
    .locals 1
    .parameter "fromItem"
    .parameter "toItem"

    .prologue
    .line 69
    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->getMaxEventsPerWidget()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->getMaxEventsPerWidget()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .end local p2
    :cond_0
    return p2
.end method

.method public getToItem(Lcom/nofatclips/androidtesting/model/WidgetState;II)I
    .locals 1
    .parameter "w"
    .parameter "fromItem"
    .parameter "toItem"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->getMaxEventsPerWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->getMaxEventsPerWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .end local p3
    :cond_0
    return p3
.end method

.method public setMaxEventsPerWidget(I)V
    .locals 0
    .parameter "maxEventsPerWidget"

    .prologue
    .line 81
    iput p1, p0, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->maxEventsPerWidget:I

    .line 82
    return-void
.end method
