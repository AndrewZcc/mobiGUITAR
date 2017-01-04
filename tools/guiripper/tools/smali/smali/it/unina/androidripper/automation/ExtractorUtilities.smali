.class public Lit/unina/androidripper/automation/ExtractorUtilities;
.super Ljava/lang/Object;
.source "ExtractorUtilities.java"


# static fields
.field private static theActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 19
    invoke-static {}, Lit/unina/androidripper/automation/ExtractorUtilities;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lit/unina/androidripper/automation/ExtractorUtilities;->theActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 15
    sput-object p0, Lit/unina/androidripper/automation/ExtractorUtilities;->theActivity:Landroid/app/Activity;

    .line 16
    return-void
.end method
