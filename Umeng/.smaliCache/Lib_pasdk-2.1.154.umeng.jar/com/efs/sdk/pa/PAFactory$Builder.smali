.class public Lcom/efs/sdk/pa/PAFactory$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/pa/PAFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/efs/sdk/pa/config/PackageLevel;

.field private b:Lcom/efs/sdk/pa/config/IEfsReporter;

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Lcom/efs/sdk/pa/PATraceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/efs/sdk/pa/config/IEfsReporter;)V
    .registers 5

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->h:J

    .line 123
    if-eqz p1, :cond_18

    .line 126
    if-eqz p2, :cond_10

    .line 129
    iput-object p2, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->b:Lcom/efs/sdk/pa/config/IEfsReporter;

    .line 130
    iput-object p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->d:Landroid/content/Context;

    .line 131
    return-void

    .line 127
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "reporter Should Not Empty"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_18
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "context Should Not null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/efs/sdk/pa/PAFactory;
    .registers 14

    .line 180
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->a:Lcom/efs/sdk/pa/config/PackageLevel;

    .line 1007
    if-eqz v0, :cond_1e

    .line 181
    new-instance v0, Lcom/efs/sdk/pa/PAFactory;

    iget-object v2, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->a:Lcom/efs/sdk/pa/config/PackageLevel;

    iget-object v4, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->b:Lcom/efs/sdk/pa/config/IEfsReporter;

    iget-boolean v5, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->c:Z

    iget-object v6, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->f:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->g:Ljava/lang/String;

    iget-wide v9, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->h:J

    iget-object v11, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->i:Lcom/efs/sdk/pa/PATraceListener;

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/efs/sdk/pa/PAFactory;-><init>(Landroid/content/Context;Lcom/efs/sdk/pa/config/PackageLevel;Lcom/efs/sdk/pa/config/IEfsReporter;ZLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JLcom/efs/sdk/pa/PATraceListener;Lcom/efs/sdk/pa/PAFactory$1;)V

    return-object v0

    .line 1008
    :cond_1e
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const-string v2, "%s Should Not Null"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public extendLogInfo(Ljava/util/HashMap;)Lcom/efs/sdk/pa/PAFactory$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/efs/sdk/pa/PAFactory$Builder;"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->f:Ljava/util/HashMap;

    .line 150
    return-object p0
.end method

.method public isNewInstall(Z)Lcom/efs/sdk/pa/PAFactory$Builder;
    .registers 2

    .line 139
    iput-boolean p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->c:Z

    .line 140
    return-object p0
.end method

.method public packageLevel(Lcom/efs/sdk/pa/config/PackageLevel;)Lcom/efs/sdk/pa/PAFactory$Builder;
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->a:Lcom/efs/sdk/pa/config/PackageLevel;

    .line 135
    return-object p0
.end method

.method public serial(Ljava/lang/String;)Lcom/efs/sdk/pa/PAFactory$Builder;
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->e:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public sver(Ljava/lang/String;)Lcom/efs/sdk/pa/PAFactory$Builder;
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->g:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public timeoutTime(J)Lcom/efs/sdk/pa/PAFactory$Builder;
    .registers 9

    .line 164
    const-wide/16 v0, 0x7d0

    const-string v2, "pafactory"

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-gtz v5, :cond_12

    .line 165
    const-string p1, "Timeout time is invalid, and the default value 2s will be used"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput-wide v0, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->h:J

    goto :goto_22

    .line 168
    :cond_12
    const-wide/16 v3, 0xfa0

    cmp-long v5, p1, v3

    if-lez v5, :cond_20

    .line 169
    const-string p1, "Timeout time over 4s is not recommended, and the default value 2s will be used"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput-wide v0, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->h:J

    .line 171
    return-object p0

    .line 174
    :cond_20
    iput-wide p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->h:J

    .line 176
    :goto_22
    return-object p0
.end method

.method public traceListener(Lcom/efs/sdk/pa/PATraceListener;)Lcom/efs/sdk/pa/PAFactory$Builder;
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->i:Lcom/efs/sdk/pa/PATraceListener;

    .line 160
    return-object p0
.end method
