.class public final Lcom/mintegral/msdk/base/common/net/k;
.super Ljava/lang/Object;
.source "CommonRequestExceptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/base/common/net/k$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Exception;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x6

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/base/common/net/k;->a:Ljava/util/HashSet;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/base/common/net/k;->b:Ljava/util/HashSet;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/base/common/net/k;->c:Ljava/util/HashMap;

    .line 48
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->a:Ljava/util/HashSet;

    const-class v1, Lorg/apache/http/NoHttpResponseException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->a:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->a:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketTimeoutException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->a:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->a:Ljava/util/HashSet;

    const-class v1, Ljava/net/ConnectException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->b:Ljava/util/HashSet;

    const-class v1, Ljava/lang/InterruptedException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->b:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->b:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLKeyException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->b:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->b:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLProtocolException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->b:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->b:Ljava/util/HashSet;

    const-class v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->c:Ljava/util/HashMap;

    const-class v1, Ljavax/net/ssl/SSLException;

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->c:Ljava/util/HashMap;

    const-class v1, Ljava/net/SocketTimeoutException;

    const/4 v2, 0x3

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->c:Ljava/util/HashMap;

    const-class v1, Ljava/net/SocketException;

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->c:Ljava/util/HashMap;

    const-class v1, Lorg/apache/http/NoHttpResponseException;

    const/16 v2, 0x8

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->c:Ljava/util/HashMap;

    const-class v1, Ljavax/net/ssl/SSLHandshakeException;

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->c:Ljava/util/HashMap;

    const-class v1, Ljavax/net/ssl/SSLKeyException;

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->c:Ljava/util/HashMap;

    const-class v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->c:Ljava/util/HashMap;

    const-class v1, Ljavax/net/ssl/SSLProtocolException;

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->c:Ljava/util/HashMap;

    const-class v1, Ljavax/net/ssl/SSLException;

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->c:Ljava/util/HashMap;

    const-class v1, Ljava/lang/InterruptedException;

    const/4 v2, -0x2

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 96
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->c:Ljava/util/HashMap;

    const-class v1, Ljava/io/IOException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->c:Ljava/util/HashMap;

    const-class v1, Ljava/lang/NullPointerException;

    const/4 v2, 0x4

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->c:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Exception;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method constructor <init>(II)V
    .registers 3

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lcom/mintegral/msdk/base/common/net/k;->d:I

    .line 114
    iput p2, p0, Lcom/mintegral/msdk/base/common/net/k;->e:I

    .line 115
    return-void
.end method

.method private static a(Ljava/util/HashSet;Ljava/lang/Throwable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Exception;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    const/4 v0, 0x1

    .line 208
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method final a(Ljava/lang/Exception;)Lcom/mintegral/msdk/base/common/net/k$a;
    .registers 6

    .prologue
    .line 153
    new-instance v1, Lcom/mintegral/msdk/base/common/net/k$a;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/common/net/k$a;-><init>()V

    .line 155
    iget v0, p0, Lcom/mintegral/msdk/base/common/net/k;->f:I

    iget v2, p0, Lcom/mintegral/msdk/base/common/net/k;->d:I

    if-ge v0, v2, :cond_4c

    .line 158
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->a:Ljava/util/HashSet;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/base/common/net/k;->a(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/mintegral/msdk/base/common/net/k$a;->b:Z

    .line 169
    :goto_16
    iget-boolean v0, v1, Lcom/mintegral/msdk/base/common/net/k$a;->b:Z

    if-eqz v0, :cond_50

    .line 170
    const-string v0, "CommonRequestExceptionManager"

    invoke-static {v0, p1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    iget v0, p0, Lcom/mintegral/msdk/base/common/net/k;->e:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 172
    iget v0, p0, Lcom/mintegral/msdk/base/common/net/k;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/base/common/net/k;->f:I

    iput v0, v1, Lcom/mintegral/msdk/base/common/net/k$a;->c:I

    .line 178
    :goto_2d
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 179
    if-nez v0, :cond_40

    .line 180
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 182
    :cond_40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/mintegral/msdk/base/common/net/k$a;->a:I

    .line 184
    return-object v1

    .line 161
    :cond_47
    sget-object v0, Lcom/mintegral/msdk/base/common/net/k;->b:Ljava/util/HashSet;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/base/common/net/k;->a(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    .line 166
    :cond_4c
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/mintegral/msdk/base/common/net/k$a;->b:Z

    goto :goto_16

    .line 174
    :cond_50
    const-string v0, "CommonRequestExceptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "httprequest exception stop retry "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-static {v0, v2, p1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d
.end method

.method final a()V
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/base/common/net/k;->f:I

    .line 192
    return-void
.end method
