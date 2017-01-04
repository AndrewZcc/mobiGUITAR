.class public final enum Lit/unina/androidripper/planning/UserFactory$Category;
.super Ljava/lang/Enum;
.source "UserFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/unina/androidripper/planning/UserFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lit/unina/androidripper/planning/UserFactory$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lit/unina/androidripper/planning/UserFactory$Category;

.field public static final enum EVENT:Lit/unina/androidripper/planning/UserFactory$Category;

.field public static final enum INPUT:Lit/unina/androidripper/planning/UserFactory$Category;

.field public static final enum SPECIAL:Lit/unina/androidripper/planning/UserFactory$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lit/unina/androidripper/planning/UserFactory$Category;

    const-string v1, "EVENT"

    invoke-direct {v0, v1, v2}, Lit/unina/androidripper/planning/UserFactory$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/unina/androidripper/planning/UserFactory$Category;->EVENT:Lit/unina/androidripper/planning/UserFactory$Category;

    new-instance v0, Lit/unina/androidripper/planning/UserFactory$Category;

    const-string v1, "INPUT"

    invoke-direct {v0, v1, v3}, Lit/unina/androidripper/planning/UserFactory$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/unina/androidripper/planning/UserFactory$Category;->INPUT:Lit/unina/androidripper/planning/UserFactory$Category;

    new-instance v0, Lit/unina/androidripper/planning/UserFactory$Category;

    const-string v1, "SPECIAL"

    invoke-direct {v0, v1, v4}, Lit/unina/androidripper/planning/UserFactory$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/unina/androidripper/planning/UserFactory$Category;->SPECIAL:Lit/unina/androidripper/planning/UserFactory$Category;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lit/unina/androidripper/planning/UserFactory$Category;

    sget-object v1, Lit/unina/androidripper/planning/UserFactory$Category;->EVENT:Lit/unina/androidripper/planning/UserFactory$Category;

    aput-object v1, v0, v2

    sget-object v1, Lit/unina/androidripper/planning/UserFactory$Category;->INPUT:Lit/unina/androidripper/planning/UserFactory$Category;

    aput-object v1, v0, v3

    sget-object v1, Lit/unina/androidripper/planning/UserFactory$Category;->SPECIAL:Lit/unina/androidripper/planning/UserFactory$Category;

    aput-object v1, v0, v4

    sput-object v0, Lit/unina/androidripper/planning/UserFactory$Category;->$VALUES:[Lit/unina/androidripper/planning/UserFactory$Category;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lit/unina/androidripper/planning/UserFactory$Category;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lit/unina/androidripper/planning/UserFactory$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lit/unina/androidripper/planning/UserFactory$Category;

    return-object v0
.end method

.method public static values()[Lit/unina/androidripper/planning/UserFactory$Category;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lit/unina/androidripper/planning/UserFactory$Category;->$VALUES:[Lit/unina/androidripper/planning/UserFactory$Category;

    invoke-virtual {v0}, [Lit/unina/androidripper/planning/UserFactory$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lit/unina/androidripper/planning/UserFactory$Category;

    return-object v0
.end method
