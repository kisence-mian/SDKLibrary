.class final Lcom/alphab/i/a$3;
.super Lcom/alphab/a/b/f;
.source "AlphabImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alphab/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alphab/i/a;


# direct methods
.method constructor <init>(Lcom/alphab/i/a;)V
    .registers 2

    .prologue
    .line 369
    iput-object p1, p0, Lcom/alphab/i/a$3;->a:Lcom/alphab/i/a;

    invoke-direct {p0}, Lcom/alphab/a/b/f;-><init>()V

    return-void
.end method
