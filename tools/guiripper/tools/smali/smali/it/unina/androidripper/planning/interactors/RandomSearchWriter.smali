.class public Lit/unina/androidripper/planning/interactors/RandomSearchWriter;
.super Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;
.source "RandomSearchWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "searchBar"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;-><init>([Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;)V
    .locals 0
    .parameter "theAbstractor"

    .prologue
    .line 20
    invoke-direct {p0}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;->setAbstractor(Lit/unina/androidripper/model/Abstractor;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;I)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "minValue"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;-><init>(Lit/unina/androidripper/model/Abstractor;)V

    .line 30
    invoke-virtual {p0, p2}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;->setMin(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Abstractor;II)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "minValue"
    .parameter "maxValue"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;-><init>(Lit/unina/androidripper/model/Abstractor;)V

    .line 40
    invoke-virtual {p0, p2}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;->setMin(I)V

    .line 41
    invoke-virtual {p0, p3}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;->setMax(I)V

    .line 42
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;II[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "minValue"
    .parameter "maxValue"
    .parameter "simpleTypes"

    .prologue
    .line 45
    invoke-direct {p0, p1, p4}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p2}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;->setMin(I)V

    .line 47
    invoke-virtual {p0, p3}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;->setMax(I)V

    .line 48
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;I[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "minValue"
    .parameter "simpleTypes"

    .prologue
    .line 34
    invoke-direct {p0, p1, p3}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p2}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;->setMin(I)V

    .line 36
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "simpleTypes"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "simpleTypes"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/adapters/RandomInteractorAdapter;-><init>([Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getInteractionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "searchText"

    return-object v0
.end method
