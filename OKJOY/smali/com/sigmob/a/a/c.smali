.class public Lcom/sigmob/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/a/a/e;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f8

    invoke-static {p1, v0}, Lcom/sigmob/a/a/f;->a([BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sigmob/a/a/c;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/a/a/c;->b:Z

    return v0
.end method
