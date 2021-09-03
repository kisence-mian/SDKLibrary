.class public Lcom/tds/common/localize/model/PreferredLanguageChangedAction;
.super Ljava/lang/Object;
.source "PreferredLanguageChangedAction.java"


# instance fields
.field public final preferredLanguage:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "preferredLanguage"    # I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/tds/common/localize/model/PreferredLanguageChangedAction;->preferredLanguage:I

    .line 9
    return-void
.end method
