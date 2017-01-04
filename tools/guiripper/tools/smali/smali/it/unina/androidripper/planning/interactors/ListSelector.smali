.class public Lit/unina/androidripper/planning/interactors/ListSelector;
.super Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;
.source "ListSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "listView"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lit/unina/androidripper/planning/interactors/ListSelector;-><init>([Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "maxItems"

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "listView"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lit/unina/androidripper/planning/interactors/ListSelector;-><init>(I[Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 0
    .parameter "maxItems"
    .parameter "simpleTypes"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;-><init>(I[Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;)V
    .locals 3
    .parameter "theAbstractor"

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "listView"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lit/unina/androidripper/planning/interactors/ListSelector;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;I)V
    .locals 3
    .parameter "theAbstractor"
    .parameter "maxItems"

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "listView"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lit/unina/androidripper/planning/interactors/ListSelector;-><init>(Lit/unina/androidripper/model/Abstractor;I[Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;I[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "maxItems"
    .parameter "simpleTypes"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;I[Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "simpleTypes"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "simpleTypes"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;-><init>([Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public cannotIdentifyWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z
    .locals 2
    .parameter "w"

    .prologue
    .line 48
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/unina/androidripper/planning/interactors/ListSelector;->doEventWhenNoId()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInteractionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "selectListItem"

    return-object v0
.end method

.method public getToItem(Lcom/nofatclips/androidtesting/model/WidgetState;II)I
    .locals 2
    .parameter "w"
    .parameter "fromItem"
    .parameter "toItem"

    .prologue
    .line 53
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preferenceList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lit/unina/androidripper/planning/Resources;->ALL_EVENTS_ON_PREFERENCES:Z

    if-eqz v0, :cond_0

    .line 56
    .end local p3
    :goto_0
    return p3

    .restart local p3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->getToItem(Lcom/nofatclips/androidtesting/model/WidgetState;II)I

    move-result p3

    goto :goto_0
.end method
