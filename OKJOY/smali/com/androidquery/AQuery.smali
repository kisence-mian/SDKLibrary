.class public Lcom/androidquery/AQuery;
.super Lcom/androidquery/AbstractAQuery;
.source "AQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/AbstractAQuery",
        "<",
        "Lcom/androidquery/AQuery;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;-><init>(Landroid/app/Activity;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "root"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/androidquery/AbstractAQuery;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;-><init>(Landroid/view/View;)V

    .line 36
    return-void
.end method
