.class public final Lcom/alphab/receiver/a;
.super Ljava/lang/Object;
.source "ParseAndLoad.java"


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alphab/receiver/a;->a:Landroid/content/Intent;

    .line 17
    sget-object v0, Lcom/alphab/a$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alphab/a;->d:Z

    .line 20
    :cond_14
    return-void
.end method
