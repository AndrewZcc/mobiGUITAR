.class public Lit/unina/androidripper/planning/interactors/HashValueEditor;
.super Lit/unina/androidripper/planning/adapters/InteractorAdapter;
.source "HashValueEditor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HashValueEditor"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "editText"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lit/unina/androidripper/planning/interactors/HashValueEditor;-><init>([Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "simpleTypes"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "simpleTypes"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;-><init>([Ljava/lang/String;)V

    .line 34
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
    .line 48
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/interactors/HashValueEditor;->getValues(Lcom/nofatclips/androidtesting/model/WidgetState;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/planning/interactors/HashValueEditor;->getEvents(Lcom/nofatclips/androidtesting/model/WidgetState;[Ljava/lang/String;)Ljava/util/List;

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
    .line 53
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/interactors/HashValueEditor;->getValues(Lcom/nofatclips/androidtesting/model/WidgetState;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/planning/interactors/HashValueEditor;->getInputs(Lcom/nofatclips/androidtesting/model/WidgetState;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInteractionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "editText"

    return-object v0
.end method

.method public getValues(Lcom/nofatclips/androidtesting/model/WidgetState;)[Ljava/lang/String;
    .locals 5
    .parameter "w"

    .prologue
    const/4 v4, 0x0

    .line 38
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 39
    .local v0, values:[Ljava/lang/String;
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lit/unina/androidripper/helpers/HashGenerator;->generateFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 41
    const-string v1, "HashValueEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Values :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-object v0
.end method
