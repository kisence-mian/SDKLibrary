.class public final Lcom/alphab/i/b;
.super Lcom/alphab/Operation;
.source "OperationRel.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alphab/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public final process()Lcom/alphab/Alphab;
    .registers 2

    .prologue
    .line 12
    invoke-static {}, Lcom/alphab/i/a;->a()Lcom/alphab/i/a;

    move-result-object v0

    return-object v0
.end method
