.class public Lcom/umeng/commonsdk/statistics/common/d$a;
.super Ljava/lang/Object;
.source "StoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/io/File;

.field private c:Ljava/io/FilenameFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 85
    const-string v0, ".um"

    invoke-direct {p0, p1, v0}, Lcom/umeng/commonsdk/statistics/common/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->a:I

    .line 166
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/d$a$1;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/common/d$a$1;-><init>(Lcom/umeng/commonsdk/statistics/common/d$a;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->c:Ljava/io/FilenameFilter;

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_2c

    .line 91
    :cond_27
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 93
    :cond_2c
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/statistics/common/d$b;)V
    .registers 7

    .line 105
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 108
    const/4 v1, 0x0

    if-eqz v0, :cond_20

    array-length v2, v0

    const/16 v3, 0xa

    if-lt v2, v3, :cond_20

    .line 109
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 110
    array-length v2, v0

    sub-int/2addr v2, v3

    .line 111
    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_20

    .line 112
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 116
    :cond_20
    if-eqz v0, :cond_4a

    array-length v2, v0

    if-lez v2, :cond_4a

    .line 117
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    invoke-interface {p1, v2}, Lcom/umeng/commonsdk/statistics/common/d$b;->a(Ljava/io/File;)V

    .line 119
    array-length v2, v0

    .line 121
    nop

    :goto_2c
    if-ge v1, v2, :cond_45

    .line 122
    nop

    .line 124
    :try_start_2f
    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Lcom/umeng/commonsdk/statistics/common/d$b;->b(Ljava/io/File;)Z

    move-result v3
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3a

    .line 128
    if-eqz v3, :cond_42

    .line 129
    aget-object v3, v0, v1

    goto :goto_3f

    .line 125
    :catchall_3a
    move-exception v3

    .line 126
    nop

    .line 128
    nop

    .line 129
    aget-object v3, v0, v1

    :goto_3f
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 121
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 133
    :cond_45
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/umeng/commonsdk/statistics/common/d$b;->c(Ljava/io/File;)V

    .line 135
    :cond_4a
    return-void
.end method

.method public a([B)V
    .registers 7

    .line 138
    if-eqz p1, :cond_29

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_29

    .line 141
    :cond_6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "um_cache_%d.env"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    :try_start_23
    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;[B)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_27

    .line 146
    goto :goto_28

    .line 145
    :catch_27
    move-exception p1

    .line 147
    :goto_28
    return-void

    .line 139
    :cond_29
    :goto_29
    return-void
.end method

.method public a()Z
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    .line 98
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 5

    .line 150
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_19

    array-length v1, v0

    if-lez v1, :cond_19

    .line 152
    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 156
    :cond_19
    return-void
.end method

.method public c()I
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/common/d$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_f

    array-length v1, v0

    if-lez v1, :cond_f

    .line 161
    array-length v0, v0

    return v0

    .line 163
    :cond_f
    const/4 v0, 0x0

    return v0
.end method
