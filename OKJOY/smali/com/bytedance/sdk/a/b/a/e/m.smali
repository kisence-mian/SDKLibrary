.class public interface abstract Lcom/bytedance/sdk/a/b/a/e/m;
.super Ljava/lang/Object;
.source "PushObserver.java"


# static fields
.field public static final a:Lcom/bytedance/sdk/a/b/a/e/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/m$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/e/m$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/m;->a:Lcom/bytedance/sdk/a/b/a/e/m;

    return-void
.end method


# virtual methods
.method public abstract a(ILcom/bytedance/sdk/a/b/a/e/b;)V
.end method

.method public abstract a(ILcom/bytedance/sdk/a/a/e;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;Z)Z"
        }
    .end annotation
.end method
