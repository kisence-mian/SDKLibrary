.class public Lcom/umeng/commonsdk/internal/utils/d;
.super Ljava/lang/Object;
.source "CpuUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/internal/utils/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a()Lcom/umeng/commonsdk/internal/utils/d$a;
    .registers 12

    .line 37
    nop

    .line 38
    nop

    .line 39
    nop

    .line 40
    nop

    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Lcom/umeng/commonsdk/internal/utils/d$a;

    invoke-direct {v2}, Lcom/umeng/commonsdk/internal/utils/d$a;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_147
    .catchall {:try_start_6 .. :try_end_b} :catchall_134

    .line 43
    :try_start_b
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_131
    .catchall {:try_start_b .. :try_end_12} :catchall_134

    .line 44
    nop

    .line 47
    :try_start_13
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_12d
    .catchall {:try_start_13 .. :try_end_18} :catchall_12a

    .line 48
    nop

    .line 51
    :try_start_19
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_128
    .catchall {:try_start_19 .. :try_end_1d} :catchall_126

    .line 52
    nop

    .line 54
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 55
    :goto_22
    :try_start_22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_115

    .line 56
    add-int/2addr v6, v5

    .line 57
    const/16 v9, 0x1e

    if-lt v6, v9, :cond_2f

    .line 58
    goto/16 :goto_115

    .line 60
    :cond_2f
    const-string v9, ":\\s+"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 62
    if-eqz v7, :cond_42

    if-eqz v0, :cond_42

    array-length v9, v0

    if-le v9, v5, :cond_42

    .line 63
    aget-object v7, v0, v5

    iput-object v7, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->a:Ljava/lang/String;

    .line 64
    const/4 v7, 0x0

    .line 66
    :cond_42
    if-eqz v0, :cond_53

    array-length v9, v0

    if-le v9, v5, :cond_53

    aget-object v9, v0, v1

    const-string v10, "processor"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_53

    .line 67
    add-int/lit8 v8, v8, 0x1

    .line 69
    :cond_53
    if-eqz v0, :cond_66

    array-length v9, v0

    if-le v9, v5, :cond_66

    aget-object v9, v0, v1

    const-string v10, "Features"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_66

    .line 70
    aget-object v9, v0, v5

    iput-object v9, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->d:Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_66} :catch_122
    .catchall {:try_start_22 .. :try_end_66} :catchall_126

    .line 72
    :cond_66
    const-string v9, "implementer"

    if-eqz v0, :cond_79

    :try_start_6a
    array-length v10, v0

    if-le v10, v5, :cond_79

    aget-object v10, v0, v1

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_79

    .line 73
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->e:Ljava/lang/String;

    .line 76
    :cond_79
    if-eqz v0, :cond_8c

    array-length v10, v0

    if-le v10, v5, :cond_8c

    aget-object v10, v0, v1

    const-string v11, "architecture"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8c

    .line 77
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->f:Ljava/lang/String;

    .line 79
    :cond_8c
    if-eqz v0, :cond_9f

    array-length v10, v0

    if-le v10, v5, :cond_9f

    aget-object v10, v0, v1

    const-string v11, "variant"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9f

    .line 80
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->g:Ljava/lang/String;

    .line 82
    :cond_9f
    if-eqz v0, :cond_b2

    array-length v10, v0

    if-le v10, v5, :cond_b2

    aget-object v10, v0, v1

    const-string v11, "part"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 83
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->h:Ljava/lang/String;

    .line 85
    :cond_b2
    if-eqz v0, :cond_c5

    array-length v10, v0

    if-le v10, v5, :cond_c5

    aget-object v10, v0, v1

    const-string v11, "revision"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c5

    .line 86
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->i:Ljava/lang/String;

    .line 88
    :cond_c5
    if-eqz v0, :cond_d8

    array-length v10, v0

    if-le v10, v5, :cond_d8

    aget-object v10, v0, v1

    const-string v11, "Hardware"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d8

    .line 89
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->j:Ljava/lang/String;

    .line 91
    :cond_d8
    if-eqz v0, :cond_eb

    array-length v10, v0

    if-le v10, v5, :cond_eb

    aget-object v10, v0, v1

    const-string v11, "Revision"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_eb

    .line 92
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->k:Ljava/lang/String;

    .line 94
    :cond_eb
    if-eqz v0, :cond_fe

    array-length v10, v0

    if-le v10, v5, :cond_fe

    aget-object v10, v0, v1

    const-string v11, "Serial"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_fe

    .line 95
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->l:Ljava/lang/String;

    .line 97
    :cond_fe
    if-eqz v0, :cond_10f

    array-length v10, v0

    if-le v10, v5, :cond_10f

    aget-object v10, v0, v1

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10f

    .line 98
    aget-object v0, v0, v5

    iput-object v0, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->e:Ljava/lang/String;

    .line 100
    :cond_10f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_113} :catch_122
    .catchall {:try_start_6a .. :try_end_113} :catchall_126

    .line 101
    goto/16 :goto_22

    .line 104
    :cond_115
    :goto_115
    nop

    .line 106
    :try_start_116
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_119} :catch_11a

    .line 109
    goto :goto_11b

    .line 107
    :catch_11a
    move-exception v0

    .line 111
    :goto_11b
    nop

    .line 113
    :try_start_11c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_120

    .line 116
    :goto_11f
    goto :goto_15a

    .line 114
    :catch_120
    move-exception v0

    goto :goto_11f

    .line 102
    :catch_122
    move-exception v0

    move-object v0, v3

    move v1, v8

    goto :goto_14a

    .line 104
    :catchall_126
    move-exception v0

    goto :goto_138

    .line 102
    :catch_128
    move-exception v0

    goto :goto_12f

    .line 104
    :catchall_12a
    move-exception v1

    move-object v4, v0

    goto :goto_137

    .line 102
    :catch_12d
    move-exception v4

    move-object v4, v0

    :goto_12f
    move-object v0, v3

    goto :goto_14a

    :catch_131
    move-exception v3

    move-object v4, v0

    goto :goto_14a

    .line 104
    :catchall_134
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    :goto_137
    move-object v0, v1

    :goto_138
    if-eqz v3, :cond_13f

    .line 106
    :try_start_13a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_13d} :catch_13e

    .line 109
    goto :goto_13f

    .line 107
    :catch_13e
    move-exception v1

    .line 111
    :cond_13f
    :goto_13f
    if-eqz v4, :cond_146

    .line 113
    :try_start_141
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_144} :catch_145

    .line 116
    goto :goto_146

    .line 114
    :catch_145
    move-exception v1

    .line 116
    :cond_146
    :goto_146
    throw v0

    .line 102
    :catch_147
    move-exception v2

    move-object v2, v0

    move-object v4, v2

    .line 104
    :goto_14a
    if-eqz v0, :cond_151

    .line 106
    :try_start_14c
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_150

    .line 109
    goto :goto_151

    .line 107
    :catch_150
    move-exception v0

    .line 111
    :cond_151
    :goto_151
    if-eqz v4, :cond_159

    .line 113
    :try_start_153
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_157

    .line 116
    :goto_156
    goto :goto_159

    .line 114
    :catch_157
    move-exception v0

    goto :goto_156

    .line 120
    :cond_159
    :goto_159
    move v8, v1

    :goto_15a
    iput v8, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->c:I

    .line 121
    return-object v2
.end method

.method public static b()Ljava/lang/String;
    .registers 5

    .line 128
    const-string v0, ""

    .line 131
    const/4 v1, 0x2

    :try_start_3
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v3, v1, v2

    .line 133
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 136
    const/16 v2, 0x18

    new-array v2, v2, [B

    .line 137
    :goto_20
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3e

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 140
    :cond_3e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_41} :catch_42

    .line 143
    goto :goto_43

    .line 141
    :catch_42
    move-exception v1

    .line 144
    :goto_43
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 5

    .line 149
    const-string v0, ""

    .line 152
    const/4 v1, 0x2

    :try_start_3
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    aput-object v3, v1, v2

    .line 154
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 155
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 157
    const/16 v2, 0x18

    new-array v2, v2, [B

    .line 158
    :goto_20
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3e

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 161
    :cond_3e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_41} :catch_42

    .line 164
    goto :goto_43

    .line 162
    :catch_42
    move-exception v1

    .line 165
    :goto_43
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 3

    .line 170
    nop

    .line 171
    nop

    .line 173
    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_30
    .catchall {:try_start_3 .. :try_end_f} :catchall_23

    .line 176
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_20
    .catchall {:try_start_f .. :try_end_17} :catchall_1e

    .line 182
    nop

    .line 183
    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    .line 187
    goto :goto_3c

    .line 185
    :catchall_1c
    move-exception v1

    .line 188
    goto :goto_3c

    .line 181
    :catchall_1e
    move-exception v0

    goto :goto_26

    .line 178
    :catch_20
    move-exception v0

    move-object v0, v2

    goto :goto_31

    .line 181
    :catchall_23
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 182
    :goto_26
    if-eqz v2, :cond_2e

    .line 183
    :try_start_28
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_2e

    .line 185
    :catchall_2c
    move-exception v1

    goto :goto_2f

    .line 187
    :cond_2e
    :goto_2e
    nop

    :goto_2f
    throw v0

    .line 178
    :catch_30
    move-exception v1

    .line 182
    :goto_31
    if-eqz v0, :cond_39

    .line 183
    :try_start_33
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_39

    .line 185
    :catchall_37
    move-exception v0

    .line 188
    goto :goto_3a

    .line 187
    :cond_39
    :goto_39
    nop

    .line 189
    :goto_3a
    const-string v0, ""

    :goto_3c
    return-object v0
.end method
