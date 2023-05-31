.class public final Lcom/mintegral/msdk/mtgnative/b/a;
.super Ljava/lang/Object;
.source "NativeConst.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/mintegral/msdk/base/common/a;->k:Ljava/lang/String;

    sput-object v0, Lcom/mintegral/msdk/mtgnative/b/a;->a:Ljava/lang/String;

    .line 12
    sget-object v0, Lcom/mintegral/msdk/base/common/a;->i:Ljava/lang/String;

    sput-object v0, Lcom/mintegral/msdk/mtgnative/b/a;->b:Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/mintegral/msdk/base/common/a;->l:Ljava/lang/String;

    sput-object v0, Lcom/mintegral/msdk/mtgnative/b/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 23
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 24
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    return-object v0
.end method
