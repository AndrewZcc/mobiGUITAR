.class public Lit/unina/androidripper/planning/interactors/TabSwapper;
.super Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;
.source "TabSwapper.java"


# instance fields
.field private first:Z

.field private onlyOnce:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tabHost"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lit/unina/androidripper/planning/interactors/TabSwapper;-><init>([Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "maxItems"

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tabHost"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lit/unina/androidripper/planning/interactors/TabSwapper;-><init>(I[Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 1
    .parameter "maxItems"
    .parameter "simpleTypes"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;-><init>(I[Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/unina/androidripper/planning/interactors/TabSwapper;->onlyOnce:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/unina/androidripper/planning/interactors/TabSwapper;->first:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;)V
    .locals 3
    .parameter "theAbstractor"

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tabHost"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lit/unina/androidripper/planning/interactors/TabSwapper;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;I)V
    .locals 3
    .parameter "theAbstractor"
    .parameter "maxItems"

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tabHost"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lit/unina/androidripper/planning/interactors/TabSwapper;-><init>(Lit/unina/androidripper/model/Abstractor;I[Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;I[Ljava/lang/String;)V
    .locals 1
    .parameter "theAbstractor"
    .parameter "maxItems"
    .parameter "simpleTypes"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;I[Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/unina/androidripper/planning/interactors/TabSwapper;->onlyOnce:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/unina/androidripper/planning/interactors/TabSwapper;->first:Z

    .line 45
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V
    .locals 1
    .parameter "theAbstractor"
    .parameter "simpleTypes"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/unina/androidripper/planning/interactors/TabSwapper;->onlyOnce:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/unina/androidripper/planning/interactors/TabSwapper;->first:Z

    .line 37
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "simpleTypes"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;-><init>([Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/unina/androidripper/planning/interactors/TabSwapper;->onlyOnce:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/unina/androidripper/planning/interactors/TabSwapper;->first:Z

    .line 21
    return-void
.end method

.method private isFirst()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lit/unina/androidripper/planning/interactors/TabSwapper;->first:Z

    return v0
.end method


# virtual methods
.method public canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z
    .locals 1
    .parameter "w"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lit/unina/androidripper/planning/adapters/IterativeInteractorAdapter;->canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lit/unina/androidripper/planning/interactors/TabSwapper;->isFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lit/unina/androidripper/planning/interactors/TabSwapper;->doOnlyOnce()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doOnlyOnce()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lit/unina/androidripper/planning/interactors/TabSwapper;->onlyOnce:Z

    return v0
.end method

.method public getInteractionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/unina/androidripper/planning/interactors/TabSwapper;->first:Z

    .line 50
    const-string v0, "swapTab"

    return-object v0
.end method

.method public setOnlyOnce(Z)V
    .locals 0
    .parameter "onlyOnce"

    .prologue
    .line 58
    iput-boolean p1, p0, Lit/unina/androidripper/planning/interactors/TabSwapper;->onlyOnce:Z

    .line 59
    return-void
.end method
