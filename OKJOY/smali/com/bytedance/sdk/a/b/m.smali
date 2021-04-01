.class public interface abstract Lcom/bytedance/sdk/a/b/m;
.super Ljava/lang/Object;
.source "CookieJar.java"


# static fields
.field public static final a:Lcom/bytedance/sdk/a/b/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/bytedance/sdk/a/b/m$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/m$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/b/m;->a:Lcom/bytedance/sdk/a/b/m;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/bytedance/sdk/a/b/s;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/s;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/l;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/bytedance/sdk/a/b/s;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/s;",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/l;",
            ">;)V"
        }
    .end annotation
.end method
