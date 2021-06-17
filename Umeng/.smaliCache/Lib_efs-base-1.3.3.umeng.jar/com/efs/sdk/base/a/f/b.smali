.class public final Lcom/efs/sdk/base/a/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/efs/sdk/base/a/f/a;

.field public b:Lcom/efs/sdk/base/a/f/c;

.field public c:[B

.field public d:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;B)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/efs/sdk/base/a/f/a;

    invoke-direct {v0, p1, p2}, Lcom/efs/sdk/base/a/f/a;-><init>(Ljava/lang/String;B)V

    iput-object v0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    .line 45
    new-instance p1, Lcom/efs/sdk/base/a/f/c;

    invoke-direct {p1}, Lcom/efs/sdk/base/a/f/c;-><init>()V

    iput-object p1, p0, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    .line 46
    return-void
.end method

.method public static a(Lcom/efs/sdk/base/protocol/ILogProtocol;)Lcom/efs/sdk/base/a/f/b;
    .registers 6

    .line 248
    const-string v0, "efs.base"

    .line 250
    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/efs/sdk/base/a/f/b;

    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getLogType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getLogProtocol()B

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/efs/sdk/base/a/f/b;-><init>(Ljava/lang/String;B)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_4e

    .line 252
    :try_start_10
    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getBodyType()I

    move-result v3

    packed-switch v3, :pswitch_data_56

    .line 269
    goto :goto_34

    .line 262
    :pswitch_18
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/efs/sdk/base/a/f/b;->b(I)V

    .line 263
    new-instance v1, Ljava/io/File;

    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4199
    iput-object v1, v2, Lcom/efs/sdk/base/a/f/b;->d:Ljava/io/File;

    .line 264
    goto :goto_55

    .line 255
    :pswitch_28
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/efs/sdk/base/a/f/b;->b(I)V

    .line 256
    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->generate()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/efs/sdk/base/a/f/b;->a([B)V

    .line 257
    goto :goto_55

    .line 269
    :goto_34
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can not support body type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getBodyType()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5025
    invoke-static {v0, p0, v1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4a} :catch_4b

    .line 273
    goto :goto_55

    .line 271
    :catch_4b
    move-exception p0

    move-object v1, v2

    goto :goto_4f

    :catch_4e
    move-exception p0

    .line 272
    :goto_4f
    const-string v2, "log send error"

    invoke-static {v0, v2, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    .line 274
    :goto_55
    return-object v2

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_28
        :pswitch_18
    .end packed-switch
.end method

.method private e()V
    .registers 5

    .line 79
    nop

    .line 1148
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget v0, v0, Lcom/efs/sdk/base/a/f/a;->c:I

    .line 79
    if-nez v0, :cond_13

    .line 1174
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 79
    if-eqz v0, :cond_13

    .line 80
    iget-object v1, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    .line 2174
    nop

    .line 80
    array-length v0, v0

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/efs/sdk/base/a/f/a;->f:J

    return-void

    .line 81
    :cond_13
    nop

    .line 3148
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget v0, v0, Lcom/efs/sdk/base/a/f/a;->c:I

    .line 81
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 3191
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->d:Ljava/io/File;

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 82
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    .line 4191
    iget-object v1, p0, Lcom/efs/sdk/base/a/f/b;->d:Ljava/io/File;

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/efs/sdk/base/a/f/a;->f:J

    .line 84
    :cond_2d
    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 71
    invoke-direct {p0}, Lcom/efs/sdk/base/a/f/b;->e()V

    .line 72
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-wide v0, v0, Lcom/efs/sdk/base/a/f/a;->f:J

    return-wide v0
.end method

.method public final a(I)V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iput p1, v0, Lcom/efs/sdk/base/a/f/a;->e:I

    .line 124
    invoke-direct {p0}, Lcom/efs/sdk/base/a/f/b;->e()V

    .line 125
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iput-object p1, v0, Lcom/efs/sdk/base/a/f/a;->d:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public final a([B)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 183
    invoke-direct {p0}, Lcom/efs/sdk/base/a/f/b;->e()V

    .line 184
    return-void
.end method

.method public final b(I)V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iput p1, v0, Lcom/efs/sdk/base/a/f/a;->c:I

    .line 157
    return-void
.end method

.method public final b()Z
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v0, v0, Lcom/efs/sdk/base/a/f/a;->d:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget v0, v0, Lcom/efs/sdk/base/a/f/a;->e:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/efs/sdk/base/a/f/c;->a:Z

    .line 209
    return-void
.end method
