.class public Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;
.super Lit/unina/androidripper/planning/adapters/InteractorAdapter;
.source "HashValueSearchWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "searchText"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;-><init>([Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "simpleTypes"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "simpleTypes"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;-><init>([Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getEvents(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;
    .locals 1
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
    .line 44
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;->getValues(Lcom/nofatclips/androidtesting/model/WidgetState;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;->getEvents(Lcom/nofatclips/androidtesting/model/WidgetState;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputs(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;
    .locals 1
    .parameter "w"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/WidgetState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserInput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;->getValues(Lcom/nofatclips/androidtesting/model/WidgetState;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;->getInputs(Lcom/nofatclips/androidtesting/model/WidgetState;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInteractionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "searchText"

    return-object v0
.end method

.method public getValues(Lcom/nofatclips/androidtesting/model/WidgetState;)[Ljava/lang/String;
    .locals 3
    .parameter "w"

    .prologue
    .line 37
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 38
    .local v0, values:[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lit/unina/androidripper/helpers/HashGenerator;->generateFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 39
    return-object v0
.end method
