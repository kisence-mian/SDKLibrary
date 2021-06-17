.class public Lcom/ta/utdid2/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Lcom/ta/utdid2/b/a/b$a;

.field private a:Lcom/ta/utdid2/b/a/b;

.field private a:Lcom/ta/utdid2/b/a/d;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 15

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/b/a/c;->b:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/ta/utdid2/b/a/c;->c:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/c;->f:Z

    .line 23
    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/c;->g:Z

    .line 24
    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/c;->h:Z

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    .line 26
    iput-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    .line 27
    iput-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    .line 28
    iput-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    .line 29
    iput-object v1, p0, Lcom/ta/utdid2/b/a/c;->mContext:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    .line 31
    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/c;->i:Z

    .line 39
    iput-boolean p4, p0, Lcom/ta/utdid2/b/a/c;->f:Z

    .line 40
    iput-boolean p5, p0, Lcom/ta/utdid2/b/a/c;->i:Z

    .line 41
    iput-object p3, p0, Lcom/ta/utdid2/b/a/c;->b:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/ta/utdid2/b/a/c;->c:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/ta/utdid2/b/a/c;->mContext:Landroid/content/Context;

    .line 44
    nop

    .line 45
    nop

    .line 46
    const-string p4, "t"

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_3d

    .line 47
    nop

    .line 48
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    .line 49
    invoke-interface {v4, p4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_3e

    .line 46
    :cond_3d
    move-wide v4, v2

    .line 51
    :goto_3e
    nop

    .line 53
    :try_start_3f
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_44

    .line 56
    goto :goto_48

    .line 54
    :catch_44
    move-exception v6

    .line 55
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    :goto_48
    invoke-static {v1}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 58
    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/c;->h:Z

    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/c;->g:Z

    goto :goto_73

    .line 60
    :cond_53
    const-string v6, "mounted"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_61

    .line 61
    iput-boolean v7, p0, Lcom/ta/utdid2/b/a/c;->h:Z

    iput-boolean v7, p0, Lcom/ta/utdid2/b/a/c;->g:Z

    goto :goto_73

    .line 62
    :cond_61
    nop

    .line 63
    const-string v6, "mounted_ro"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 64
    iput-boolean v7, p0, Lcom/ta/utdid2/b/a/c;->g:Z

    .line 65
    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/c;->h:Z

    goto :goto_73

    .line 67
    :cond_6f
    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/c;->h:Z

    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/c;->g:Z

    .line 70
    :goto_73
    iget-boolean v1, p0, Lcom/ta/utdid2/b/a/c;->g:Z

    const-string v6, "t2"

    if-nez v1, :cond_7d

    iget-boolean v1, p0, Lcom/ta/utdid2/b/a/c;->h:Z

    if-eqz v1, :cond_15c

    .line 71
    :cond_7d
    if-eqz p1, :cond_15c

    .line 72
    invoke-static {p2}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15c

    .line 73
    invoke-direct {p0, p2}, Lcom/ta/utdid2/b/a/c;->a(Ljava/lang/String;)Lcom/ta/utdid2/b/a/d;

    move-result-object p2

    iput-object p2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    .line 74
    if-eqz p2, :cond_15c

    .line 76
    nop

    .line 77
    :try_start_8e
    invoke-virtual {p2, p3, v0}, Lcom/ta/utdid2/b/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;

    move-result-object p2

    iput-object p2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    .line 79
    invoke-interface {p2, p4, v2, v3}, Lcom/ta/utdid2/b/a/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v7
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_98} :catch_159

    .line 80
    if-nez p5, :cond_d7

    .line 81
    cmp-long p2, v4, v7

    if-lez p2, :cond_af

    .line 83
    :try_start_9e
    iget-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/b/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/b/a/b;)V

    .line 84
    iget-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/b/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    goto/16 :goto_153

    .line 87
    :cond_af
    cmp-long p2, v4, v7

    if-gez p2, :cond_c2

    .line 89
    iget-object p2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    iget-object p4, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, p4}, Lcom/ta/utdid2/b/a/c;->a(Lcom/ta/utdid2/b/a/b;Landroid/content/SharedPreferences;)V

    .line 90
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    goto/16 :goto_153

    .line 92
    :cond_c2
    cmp-long p1, v4, v7

    if-nez p1, :cond_153

    .line 93
    iget-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/b/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/b/a/b;)V

    .line 94
    iget-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/b/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    goto/16 :goto_153

    .line 99
    :cond_d7
    iget-object p2, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {p2, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p4
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_dd} :catch_157

    .line 100
    :try_start_dd
    iget-object p2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-interface {p2, v6, v2, v3}, Lcom/ta/utdid2/b/a/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 101
    cmp-long p2, p4, v7

    if-gez p2, :cond_fb

    cmp-long p2, p4, v2

    if-lez p2, :cond_fb

    .line 103
    iget-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/b/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/b/a/b;)V

    .line 104
    iget-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/b/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    goto :goto_152

    .line 107
    :cond_fb
    cmp-long p2, p4, v7

    if-lez p2, :cond_111

    cmp-long p2, v7, v2

    if-lez p2, :cond_111

    .line 109
    iget-object p2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    iget-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, v1}, Lcom/ta/utdid2/b/a/c;->a(Lcom/ta/utdid2/b/a/b;Landroid/content/SharedPreferences;)V

    .line 110
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    goto :goto_152

    .line 112
    :cond_111
    cmp-long p2, p4, v2

    if-nez p2, :cond_127

    cmp-long p2, v7, v2

    if-lez p2, :cond_127

    .line 113
    iget-object p2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    iget-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, v1}, Lcom/ta/utdid2/b/a/c;->a(Lcom/ta/utdid2/b/a/b;Landroid/content/SharedPreferences;)V

    .line 114
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    goto :goto_152

    .line 116
    :cond_127
    cmp-long p1, v7, v2

    if-nez p1, :cond_13f

    cmp-long p1, p4, v2

    if-lez p1, :cond_13f

    .line 117
    iget-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/b/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/b/a/b;)V

    .line 118
    iget-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/b/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    goto :goto_152

    .line 121
    :cond_13f
    cmp-long p1, p4, v7

    if-nez p1, :cond_152

    .line 122
    iget-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/b/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/b/a/b;)V

    .line 123
    iget-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/b/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_152} :catch_154

    .line 130
    :cond_152
    :goto_152
    move-wide v4, p4

    :cond_153
    :goto_153
    goto :goto_15d

    .line 128
    :catch_154
    move-exception p1

    move-wide v4, p4

    goto :goto_15d

    :catch_157
    move-exception p1

    goto :goto_15d

    :catch_159
    move-exception p1

    move-wide v7, v2

    goto :goto_15d

    .line 135
    :cond_15c
    move-wide v7, v2

    :goto_15d
    cmp-long p1, v4, v7

    if-nez p1, :cond_169

    cmp-long p1, v4, v2

    if-nez p1, :cond_199

    cmp-long p1, v7, v2

    if-nez p1, :cond_199

    .line 136
    :cond_169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 137
    iget-boolean p3, p0, Lcom/ta/utdid2/b/a/c;->i:Z

    if-eqz p3, :cond_17b

    if-eqz p3, :cond_199

    cmp-long p3, v4, v2

    if-nez p3, :cond_199

    cmp-long p3, v7, v2

    if-nez p3, :cond_199

    .line 139
    :cond_17b
    iget-object p3, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz p3, :cond_189

    .line 140
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 141
    invoke-interface {p3, v6, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    :cond_189
    :try_start_189
    iget-object p3, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    if-eqz p3, :cond_197

    .line 146
    invoke-interface {p3}, Lcom/ta/utdid2/b/a/b;->a()Lcom/ta/utdid2/b/a/b$a;

    move-result-object p3

    .line 147
    invoke-interface {p3, v6, p1, p2}, Lcom/ta/utdid2/b/a/b$a;->a(Ljava/lang/String;J)Lcom/ta/utdid2/b/a/b$a;

    .line 148
    invoke-interface {p3}, Lcom/ta/utdid2/b/a/b$a;->commit()Z
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_197} :catch_198

    .line 152
    :cond_197
    goto :goto_199

    .line 150
    :catch_198
    move-exception p1

    .line 155
    :cond_199
    :goto_199
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ta/utdid2/b/a/d;
    .registers 3

    .line 158
    invoke-direct {p0, p1}, Lcom/ta/utdid2/b/a/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 159
    if-eqz p1, :cond_12

    .line 160
    new-instance v0, Lcom/ta/utdid2/b/a/d;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ta/utdid2/b/a/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    .line 161
    return-object v0

    .line 163
    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 167
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_2d

    .line 169
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    .line 169
    const-string p1, "%s%s%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2c

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 174
    :cond_2c
    return-object v1

    .line 176
    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/b/a/b;)V
    .registers 7

    .line 180
    if-eqz p1, :cond_76

    if-eqz p2, :cond_76

    .line 181
    invoke-interface {p2}, Lcom/ta/utdid2/b/a/b;->a()Lcom/ta/utdid2/b/a/b$a;

    move-result-object p2

    .line 182
    if-eqz p2, :cond_76

    .line 183
    invoke-interface {p2}, Lcom/ta/utdid2/b/a/b$a;->b()Lcom/ta/utdid2/b/a/b$a;

    .line 184
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 185
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 186
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 189
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_39

    .line 190
    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/b/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/b/a/b$a;

    goto :goto_70

    .line 191
    :cond_39
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_47

    .line 192
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/b/a/b$a;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b$a;

    goto :goto_70

    .line 193
    :cond_47
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_55

    .line 194
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v1, v2, v3}, Lcom/ta/utdid2/b/a/b$a;->a(Ljava/lang/String;J)Lcom/ta/utdid2/b/a/b$a;

    goto :goto_70

    .line 195
    :cond_55
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_63

    .line 196
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/b/a/b$a;->a(Ljava/lang/String;F)Lcom/ta/utdid2/b/a/b$a;

    goto :goto_70

    .line 197
    :cond_63
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_70

    .line 198
    check-cast v0, Ljava/lang/Boolean;

    .line 199
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 198
    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/b/a/b$a;->a(Ljava/lang/String;Z)Lcom/ta/utdid2/b/a/b$a;

    .line 201
    :cond_70
    :goto_70
    goto :goto_19

    .line 203
    :cond_71
    :try_start_71
    invoke-interface {p2}, Lcom/ta/utdid2/b/a/b$a;->commit()Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75

    .line 206
    goto :goto_76

    .line 204
    :catch_75
    move-exception p1

    .line 209
    :cond_76
    :goto_76
    return-void
.end method

.method private a(Lcom/ta/utdid2/b/a/b;Landroid/content/SharedPreferences;)V
    .registers 7

    .line 212
    if-eqz p1, :cond_74

    if-eqz p2, :cond_74

    .line 213
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 214
    if-eqz p2, :cond_74

    .line 215
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 216
    invoke-interface {p1}, Lcom/ta/utdid2/b/a/b;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 217
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 218
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 221
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_39

    .line 222
    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_70

    .line 223
    :cond_39
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_47

    .line 224
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_70

    .line 225
    :cond_47
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_55

    .line 226
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_70

    .line 227
    :cond_55
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_63

    .line 228
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_70

    .line 229
    :cond_63
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_70

    .line 230
    check-cast v0, Ljava/lang/Boolean;

    .line 231
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 230
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 233
    :cond_70
    :goto_70
    goto :goto_19

    .line 234
    :cond_71
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    :cond_74
    return-void
.end method

.method private b()V
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_e

    .line 252
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    .line 254
    :cond_e
    iget-boolean v0, p0, Lcom/ta/utdid2/b/a/c;->h:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    if-eqz v0, :cond_20

    .line 255
    invoke-interface {v0}, Lcom/ta/utdid2/b/a/b;->a()Lcom/ta/utdid2/b/a/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    .line 257
    :cond_20
    invoke-direct {p0}, Lcom/ta/utdid2/b/a/c;->b()Z

    .line 258
    return-void
.end method

.method private b()Z
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    if-eqz v0, :cond_e

    .line 241
    invoke-interface {v0}, Lcom/ta/utdid2/b/a/b;->a()Z

    move-result v0

    .line 242
    if-nez v0, :cond_d

    .line 243
    invoke-virtual {p0}, Lcom/ta/utdid2/b/a/c;->commit()Z

    .line 245
    :cond_d
    return v0

    .line 247
    :cond_e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public commit()Z
    .registers 7

    .line 376
    nop

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 378
    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x0

    if-eqz v2, :cond_21

    .line 379
    iget-boolean v4, p0, Lcom/ta/utdid2/b/a/c;->i:Z

    if-nez v4, :cond_17

    .line 380
    iget-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_17

    .line 381
    const-string v4, "t"

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 384
    :cond_17
    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_21

    .line 385
    const/4 v0, 0x0

    goto :goto_22

    .line 388
    :cond_21
    const/4 v0, 0x1

    :goto_22
    iget-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_32

    .line 389
    iget-object v1, p0, Lcom/ta/utdid2/b/a/c;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_32

    .line 390
    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    .line 394
    :cond_32
    const/4 v1, 0x0

    .line 396
    :try_start_33
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_37} :catch_38

    .line 399
    goto :goto_3c

    .line 397
    :catch_38
    move-exception v2

    .line 398
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    :goto_3c
    invoke-static {v1}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a4

    .line 401
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 402
    iget-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    if-nez v4, :cond_76

    .line 403
    iget-object v4, p0, Lcom/ta/utdid2/b/a/c;->c:Ljava/lang/String;

    .line 404
    invoke-direct {p0, v4}, Lcom/ta/utdid2/b/a/c;->a(Ljava/lang/String;)Lcom/ta/utdid2/b/a/d;

    move-result-object v4

    .line 405
    if-eqz v4, :cond_75

    .line 406
    iget-object v5, p0, Lcom/ta/utdid2/b/a/c;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/ta/utdid2/b/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    .line 408
    iget-boolean v5, p0, Lcom/ta/utdid2/b/a/c;->i:Z

    if-nez v5, :cond_68

    .line 409
    iget-object v5, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, v5, v4}, Lcom/ta/utdid2/b/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/b/a/b;)V

    goto :goto_6d

    .line 411
    :cond_68
    iget-object v5, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, v4, v5}, Lcom/ta/utdid2/b/a/c;->a(Lcom/ta/utdid2/b/a/b;Landroid/content/SharedPreferences;)V

    .line 413
    :goto_6d
    iget-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    invoke-interface {v4}, Lcom/ta/utdid2/b/a/b;->a()Lcom/ta/utdid2/b/a/b$a;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    .line 415
    :cond_75
    goto :goto_84

    .line 417
    :cond_76
    :try_start_76
    iget-object v4, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    if-eqz v4, :cond_81

    .line 418
    invoke-interface {v4}, Lcom/ta/utdid2/b/a/b$a;->commit()Z

    move-result v4
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7e} :catch_82

    if-nez v4, :cond_81

    .line 419
    const/4 v0, 0x0

    .line 424
    :cond_81
    goto :goto_84

    .line 422
    :catch_82
    move-exception v0

    .line 423
    const/4 v0, 0x0

    .line 427
    :cond_84
    :goto_84
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_96

    .line 429
    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    iget-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    if-eqz v1, :cond_a4

    .line 432
    :cond_96
    :try_start_96
    iget-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/d;

    if-eqz v1, :cond_a2

    .line 433
    iget-object v2, p0, Lcom/ta/utdid2/b/a/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ta/utdid2/b/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a2} :catch_a3

    .line 438
    :cond_a2
    goto :goto_a4

    .line 436
    :catch_a3
    move-exception v1

    .line 441
    :cond_a4
    :goto_a4
    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 445
    invoke-direct {p0}, Lcom/ta/utdid2/b/a/c;->b()Z

    .line 446
    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-eqz v0, :cond_14

    .line 447
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {v0}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 449
    return-object v0

    .line 452
    :cond_14
    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b;

    if-eqz v0, :cond_1d

    .line 453
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/b/a/b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 455
    :cond_1d
    return-object v1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 309
    invoke-static {p1}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 310
    invoke-direct {p0}, Lcom/ta/utdid2/b/a/c;->b()V

    .line 311
    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_18

    .line 312
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    :cond_18
    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    if-eqz v0, :cond_1f

    .line 315
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/b/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/b/a/b$a;

    .line 318
    :cond_1f
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 321
    invoke-static {p1}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 322
    invoke-direct {p0}, Lcom/ta/utdid2/b/a/c;->b()V

    .line 323
    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_18

    .line 324
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 326
    :cond_18
    iget-object v0, p0, Lcom/ta/utdid2/b/a/c;->a:Lcom/ta/utdid2/b/a/b$a;

    if-eqz v0, :cond_1f

    .line 327
    invoke-interface {v0, p1}, Lcom/ta/utdid2/b/a/b$a;->a(Ljava/lang/String;)Lcom/ta/utdid2/b/a/b$a;

    .line 330
    :cond_1f
    return-void
.end method
