.class public Lcom/sigmob/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f8

    invoke-static {p1, v0}, Lcom/sigmob/a/a/e;->a([BI)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sigmob/a/a/c;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/a/a/c;->a:Z

    return v0
.end method
