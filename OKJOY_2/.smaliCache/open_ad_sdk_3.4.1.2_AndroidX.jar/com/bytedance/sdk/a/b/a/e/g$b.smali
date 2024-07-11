.class public abstract Lcom/bytedance/sdk/a/b/a/e/g$b;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# static fields
.field public static final f:Lcom/bytedance/sdk/a/b/a/e/g$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 909
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/g$b$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/e/g$b$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/g$b;->f:Lcom/bytedance/sdk/a/b/a/e/g$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/a/e/g;)V
    .registers 2

    .line 932
    return-void
.end method

.method public abstract a(Lcom/bytedance/sdk/a/b/a/e/i;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
