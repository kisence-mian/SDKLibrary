.class public abstract Lcom/tds/tapdb/b/g$n;
.super Lcom/tds/tapdb/b/g$p;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/tapdb/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/tapdb/b/g$p<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/Flushable;


# direct methods
.method protected constructor <init>(Ljava/io/Flushable;)V
    .registers 2

    invoke-direct {p0}, Lcom/tds/tapdb/b/g$p;-><init>()V

    iput-object p1, p0, Lcom/tds/tapdb/b/g$n;->a:Ljava/io/Flushable;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tds/tapdb/b/g$n;->a:Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    return-void
.end method
