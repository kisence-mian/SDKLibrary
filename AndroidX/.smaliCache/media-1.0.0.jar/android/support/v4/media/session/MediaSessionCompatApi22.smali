.class Landroid/support/v4/media/session/MediaSessionCompatApi22;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi22.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static setRatingType(Ljava/lang/Object;I)V
    .registers 3
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "type"    # I

    .line 26
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setRatingType(I)V

    .line 27
    return-void
.end method
