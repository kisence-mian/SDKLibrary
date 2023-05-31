.class public final Landroid/support/v4/app/ServiceCompat;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ServiceCompat$StopForegroundFlags;
    }
.end annotation


# static fields
.field public static final START_STICKY:I = 0x1

.field public static final STOP_FOREGROUND_DETACH:I = 0x2

.field public static final STOP_FOREGROUND_REMOVE:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static stopForeground(Landroid/app/Service;I)V
    .registers 4
    .param p0, "service"    # Landroid/app/Service;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "flags"    # I

    .prologue
    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    .line 103
    :goto_9
    return-void

    .line 101
    :cond_a
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method
