.class public final Lcom/tapjoy/internal/hz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/tapjoy/internal/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bd<",
            "Lcom/tapjoy/internal/hz;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/tapjoy/internal/ai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/ai<",
            "Ljava/net/URL;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/net/URL;

.field public b:Landroid/graphics/Bitmap;

.field public c:[B

.field public d:Lcom/tapjoy/internal/ig;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/tapjoy/internal/am;

    invoke-direct {v0}, Lcom/tapjoy/internal/am;-><init>()V

    .line 33
    nop

    .line 2015
    new-instance v1, Lcom/tapjoy/internal/ak$a;

    check-cast v0, Lcom/tapjoy/internal/al;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/ak$a;-><init>(Lcom/tapjoy/internal/al;)V

    .line 33
    sput-object v1, Lcom/tapjoy/internal/hz;->f:Lcom/tapjoy/internal/ai;

    .line 168
    new-instance v0, Lcom/tapjoy/internal/hz$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/hz$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/hz;->e:Lcom/tapjoy/internal/bd;

    return-void
.end method

.method constructor <init>(Lcom/tapjoy/internal/bi;)V
    .registers 4

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    nop

    .line 1097
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->k()Lcom/tapjoy/internal/bn;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 152
    :goto_f
    if-eqz v0, :cond_18

    .line 153
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->e()Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/hz;->a:Ljava/net/URL;

    return-void

    .line 155
    :cond_18
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    .line 156
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_1f
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 158
    const-string v1, "url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 159
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->e()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/hz;->a:Ljava/net/URL;

    goto :goto_1f

    .line 161
    :cond_34
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    goto :goto_1f

    .line 164
    :cond_38
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/tapjoy/internal/hz;->a:Ljava/net/URL;

    .line 42
    return-void
.end method

.method private a(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .registers 5

    .line 128
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 129
    invoke-static {p1, v0}, Lcom/tapjoy/internal/jz;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 130
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 132
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 133
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 135
    new-instance v1, Lcom/tapjoy/internal/ih;

    invoke-direct {v1}, Lcom/tapjoy/internal/ih;-><init>()V

    .line 136
    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/ih;->a([B)Lcom/tapjoy/internal/ih;

    .line 137
    invoke-virtual {v1}, Lcom/tapjoy/internal/ih;->a()Lcom/tapjoy/internal/ig;

    move-result-object v1

    .line 139
    nop

    .line 1073
    iget v2, v1, Lcom/tapjoy/internal/ig;->b:I

    .line 139
    if-nez v2, :cond_2a

    .line 140
    iput-object p1, p0, Lcom/tapjoy/internal/hz;->c:[B

    .line 141
    iput-object v1, p0, Lcom/tapjoy/internal/hz;->d:Lcom/tapjoy/internal/ig;

    goto :goto_35

    .line 144
    :cond_2a
    sget-object p1, Lcom/tapjoy/internal/r;->a:Lcom/tapjoy/internal/r;

    invoke-static {v0}, Lcom/tapjoy/internal/r;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/hz;->b:Landroid/graphics/Bitmap;

    .line 145
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 148
    :goto_35
    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/tapjoy/internal/hz;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tapjoy/internal/hz;->c:[B

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .registers 11

    .line 55
    invoke-static {}, Lcom/tapjoy/internal/gc;->b()Lcom/tapjoy/internal/ga;

    move-result-object v0

    const-string v1, "mm_external_cache_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ga;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 58
    nop

    .line 60
    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1f

    .line 61
    sget-object v2, Lcom/tapjoy/internal/hz;->f:Lcom/tapjoy/internal/ai;

    iget-object v3, p0, Lcom/tapjoy/internal/hz;->a:Ljava/net/URL;

    invoke-interface {v2, v3}, Lcom/tapjoy/internal/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tapjoy/internal/hz;->b:Landroid/graphics/Bitmap;

    .line 62
    if-eqz v2, :cond_1f

    .line 63
    return-void

    .line 67
    :cond_1f
    if-eqz v0, :cond_61

    .line 68
    sget-object v2, Lcom/tapjoy/internal/hv;->a:Lcom/tapjoy/internal/hv;

    iget-object v3, p0, Lcom/tapjoy/internal/hz;->a:Ljava/net/URL;

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/hv;->a(Ljava/net/URL;)Ljava/io/File;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_61

    .line 70
    const/4 v3, 0x0

    .line 72
    :try_start_2c
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_43
    .catchall {:try_start_2c .. :try_end_31} :catchall_3e

    .line 73
    :try_start_31
    invoke-direct {p0, v4}, Lcom/tapjoy/internal/hz;->a(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_3b
    .catchall {:try_start_31 .. :try_end_34} :catchall_38

    .line 79
    invoke-static {v4}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    goto :goto_47

    :catchall_38
    move-exception v0

    move-object v3, v4

    goto :goto_3f

    .line 75
    :catch_3b
    move-exception v3

    move-object v3, v4

    goto :goto_44

    .line 79
    :catchall_3e
    move-exception v0

    :goto_3f
    invoke-static {v3}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 80
    throw v0

    .line 75
    :catch_43
    move-exception v4

    .line 79
    :goto_44
    invoke-static {v3}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 80
    :goto_47
    nop

    .line 82
    iget-object v3, p0, Lcom/tapjoy/internal/hz;->b:Landroid/graphics/Bitmap;

    if-nez v3, :cond_55

    iget-object v4, p0, Lcom/tapjoy/internal/hz;->c:[B

    if-eqz v4, :cond_51

    goto :goto_55

    .line 88
    :cond_51
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_61

    .line 83
    :cond_55
    :goto_55
    if-eqz v1, :cond_60

    if-eqz v3, :cond_60

    .line 84
    sget-object v0, Lcom/tapjoy/internal/hz;->f:Lcom/tapjoy/internal/ai;

    iget-object v1, p0, Lcom/tapjoy/internal/hz;->a:Ljava/net/URL;

    invoke-interface {v0, v1, v3}, Lcom/tapjoy/internal/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    :cond_60
    return-void

    .line 93
    :cond_61
    :goto_61
    iget-object v2, p0, Lcom/tapjoy/internal/hz;->a:Ljava/net/URL;

    invoke-static {v2}, Lcom/tapjoy/internal/fk;->a(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v2

    .line 94
    const-wide/16 v3, 0x0

    .line 95
    const-string v5, "Cache-Control"

    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-static {v5}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9d

    .line 97
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 98
    array-length v6, v5

    const/4 v7, 0x0

    :goto_7d
    if-ge v7, v6, :cond_9d

    aget-object v8, v5, v7

    .line 99
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 100
    const-string v9, "max-age="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9a

    .line 101
    const/16 v5, 0x8

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 103
    :try_start_93
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_97
    .catch Ljava/lang/NumberFormatException; {:try_start_93 .. :try_end_97} :catch_98

    .line 106
    goto :goto_9d

    .line 104
    :catch_98
    move-exception v5

    .line 107
    goto :goto_9d

    .line 98
    :cond_9a
    add-int/lit8 v7, v7, 0x1

    goto :goto_7d

    .line 112
    :cond_9d
    :goto_9d
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 113
    invoke-direct {p0, v2}, Lcom/tapjoy/internal/hz;->a(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object v5

    .line 114
    invoke-static {v2}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 116
    sget-object v2, Lcom/tapjoy/internal/hv;->a:Lcom/tapjoy/internal/hv;

    invoke-static {v3, v4}, Lcom/tapjoy/internal/hv;->a(J)Z

    move-result v2

    if-eqz v2, :cond_c1

    if-eqz v0, :cond_c1

    .line 117
    iget-object v0, p0, Lcom/tapjoy/internal/hz;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_ba

    iget-object v0, p0, Lcom/tapjoy/internal/hz;->c:[B

    if-eqz v0, :cond_c1

    .line 118
    :cond_ba
    sget-object v0, Lcom/tapjoy/internal/hv;->a:Lcom/tapjoy/internal/hv;

    iget-object v2, p0, Lcom/tapjoy/internal/hz;->a:Ljava/net/URL;

    invoke-virtual {v0, v2, v5, v3, v4}, Lcom/tapjoy/internal/hv;->a(Ljava/net/URL;Ljava/io/InputStream;J)V

    .line 122
    :cond_c1
    if-eqz v1, :cond_ce

    iget-object v0, p0, Lcom/tapjoy/internal/hz;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_ce

    .line 123
    sget-object v1, Lcom/tapjoy/internal/hz;->f:Lcom/tapjoy/internal/ai;

    iget-object v2, p0, Lcom/tapjoy/internal/hz;->a:Ljava/net/URL;

    invoke-interface {v1, v2, v0}, Lcom/tapjoy/internal/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    :cond_ce
    return-void
.end method
