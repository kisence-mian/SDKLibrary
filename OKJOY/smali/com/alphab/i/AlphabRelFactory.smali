.class public Lcom/alphab/i/AlphabRelFactory;
.super Ljava/lang/Object;
.source "AlphabRelFactory.java"

# interfaces
.implements Lcom/alphab/AlphabFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAlphab()Lcom/alphab/Operation;
    .registers 2

    .prologue
    .line 13
    new-instance v0, Lcom/alphab/i/b;

    invoke-direct {v0}, Lcom/alphab/i/b;-><init>()V

    return-object v0
.end method
