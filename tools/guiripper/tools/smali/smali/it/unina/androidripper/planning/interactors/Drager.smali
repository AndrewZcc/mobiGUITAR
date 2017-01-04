.class public Lit/unina/androidripper/planning/interactors/Drager;
.super Lit/unina/androidripper/planning/adapters/InteractorAdapter;
.source "Drager.java"


# direct methods
.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "simpleTypes"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "simpleTypes"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;-><init>([Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z
    .locals 1
    .parameter "w"

    .prologue
    .line 19
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v0

    if-eqz v0, :cond_0

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
    .line 24
    const-string v0, "drag"

    return-object v0
.end method
