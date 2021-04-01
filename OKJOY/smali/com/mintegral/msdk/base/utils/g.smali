.class public final Lcom/mintegral/msdk/base/utils/g;
.super Ljava/lang/Object;
.source "CommonLogUtil.java"


# static fields
.field public static a:Z

.field public static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    sput-boolean v0, Lcom/mintegral/msdk/base/utils/g;->c:Z

    .line 12
    sput-boolean v0, Lcom/mintegral/msdk/base/utils/g;->d:Z

    .line 13
    sput-boolean v0, Lcom/mintegral/msdk/base/utils/g;->e:Z

    .line 14
    sput-boolean v0, Lcom/mintegral/msdk/base/utils/g;->f:Z

    .line 15
    sput-boolean v0, Lcom/mintegral/msdk/base/utils/g;->g:Z

    .line 16
    sput-boolean v1, Lcom/mintegral/msdk/base/utils/g;->a:Z

    .line 17
    sput-boolean v0, Lcom/mintegral/msdk/base/utils/g;->b:Z

    .line 18
    sput-boolean v1, Lcom/mintegral/msdk/base/utils/g;->h:Z

    .line 21
    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-nez v0, :cond_26

    .line 22
    sput-boolean v1, Lcom/mintegral/msdk/base/utils/g;->c:Z

    .line 23
    sput-boolean v1, Lcom/mintegral/msdk/base/utils/g;->d:Z

    .line 24
    sput-boolean v1, Lcom/mintegral/msdk/base/utils/g;->e:Z

    .line 25
    sput-boolean v1, Lcom/mintegral/msdk/base/utils/g;->f:Z

    .line 26
    sput-boolean v1, Lcom/mintegral/msdk/base/utils/g;->g:Z

    .line 27
    sput-boolean v1, Lcom/mintegral/msdk/base/utils/g;->a:Z

    .line 28
    sput-boolean v1, Lcom/mintegral/msdk/base/utils/g;->b:Z

    .line 29
    sput-boolean v1, Lcom/mintegral/msdk/base/utils/g;->h:Z

    .line 31
    :cond_26
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 79
    sget-boolean v0, Lcom/mintegral/msdk/base/utils/g;->d:Z

    if-eqz v0, :cond_7

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_7
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 96
    sget-boolean v0, Lcom/mintegral/msdk/base/utils/g;->d:Z

    if-eqz v0, :cond_7

    .line 97
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :cond_7
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 174
    sget-boolean v0, Lcom/mintegral/msdk/base/utils/g;->f:Z

    if-eqz v0, :cond_7

    .line 175
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :cond_7
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 111
    sget-boolean v0, Lcom/mintegral/msdk/base/utils/g;->e:Z

    if-eqz v0, :cond_7

    .line 112
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_7
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 160
    sget-boolean v0, Lcom/mintegral/msdk/base/utils/g;->f:Z

    if-eqz v0, :cond_7

    .line 161
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    :cond_7
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 143
    sget-boolean v0, Lcom/mintegral/msdk/base/utils/g;->f:Z

    if-eqz v0, :cond_7

    .line 144
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_7
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 206
    sget-boolean v0, Lcom/mintegral/msdk/base/utils/g;->g:Z

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 207
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    :cond_b
    sget-boolean v0, Lcom/mintegral/msdk/base/utils/g;->h:Z

    if-nez v0, :cond_f

    .line 216
    :cond_f
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 189
    sget-boolean v0, Lcom/mintegral/msdk/base/utils/g;->g:Z

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 190
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_9
    return-void
.end method
