.class public Lcom/kwad/sdk/core/network/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/kwad/sdk/core/network/f;

.field public static b:Lcom/kwad/sdk/core/network/f;

.field public static c:Lcom/kwad/sdk/core/network/f;

.field public static d:Lcom/kwad/sdk/core/network/f;

.field public static e:Lcom/kwad/sdk/core/network/f;

.field public static f:Lcom/kwad/sdk/core/network/f;

.field public static g:Lcom/kwad/sdk/core/network/f;

.field public static h:Lcom/kwad/sdk/core/network/f;

.field public static i:Lcom/kwad/sdk/core/network/f;

.field public static j:Lcom/kwad/sdk/core/network/f;


# instance fields
.field public k:I

.field public l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/core/network/f;

    const v1, 0x9c41

    const-string v2, "\u7f51\u7edc\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/network/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/network/f;->a:Lcom/kwad/sdk/core/network/f;

    new-instance v0, Lcom/kwad/sdk/core/network/f;

    const v1, 0x9c42

    const-string v2, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/network/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/network/f;->b:Lcom/kwad/sdk/core/network/f;

    new-instance v0, Lcom/kwad/sdk/core/network/f;

    const v1, 0x9c43

    const-string v2, "\u5e7f\u544a\u6570\u636e\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/network/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/network/f;->c:Lcom/kwad/sdk/core/network/f;

    new-instance v0, Lcom/kwad/sdk/core/network/f;

    const v1, 0x9c44

    const-string v2, "\u89c6\u9891\u8d44\u6e90\u7f13\u5b58\u5931\u8d25"

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/network/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/network/f;->d:Lcom/kwad/sdk/core/network/f;

    new-instance v0, Lcom/kwad/sdk/core/network/f;

    const v1, 0x9c45

    const-string v2, "\u7f51\u7edc\u8d85\u65f6"

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/network/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/network/f;->e:Lcom/kwad/sdk/core/network/f;

    new-instance v0, Lcom/kwad/sdk/core/network/f;

    const v1, 0x9c47

    const-string v2, "\u56fe\u7247\u4e0b\u8f7d\u5931\u8d25"

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/network/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/network/f;->f:Lcom/kwad/sdk/core/network/f;

    new-instance v0, Lcom/kwad/sdk/core/network/f;

    const v1, 0x186a6

    const-string v2, "\u66f4\u591a\u89c6\u9891\u8bf7\u524d\u5f80\u5feb\u624bApp\u67e5\u770b"

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/network/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/network/f;->g:Lcom/kwad/sdk/core/network/f;

    new-instance v0, Lcom/kwad/sdk/core/network/f;

    const v1, 0x186a7

    const-string v2, "\u590d\u5236\u94fe\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/network/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/network/f;->h:Lcom/kwad/sdk/core/network/f;

    new-instance v0, Lcom/kwad/sdk/core/network/f;

    const v1, 0x186a8

    const-string v2, "\u5185\u5bb9\u6709\u70b9\u654f\u611f\uff0c\u4e0d\u53ef\u4ee5\u53d1\u9001\u54e6"

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/network/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/network/f;->i:Lcom/kwad/sdk/core/network/f;

    new-instance v0, Lcom/kwad/sdk/core/network/f;

    const v1, 0x1fbd1

    const-string v2, "\u6570\u636e\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/network/f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/core/network/f;->j:Lcom/kwad/sdk/core/network/f;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kwad/sdk/core/network/f;->k:I

    iput-object p2, p0, Lcom/kwad/sdk/core/network/f;->l:Ljava/lang/String;

    return-void
.end method
