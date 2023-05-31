.class public Lcom/tapsdk/moment/TapMoment$Page;
.super Ljava/lang/Object;
.source "TapMoment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/TapMoment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Page"
.end annotation


# static fields
.field public static final PAGE_SCENE_ID_EXTRA_PARAM:Ljava/lang/String; = "scene_id"

.field public static final PAGE_SHORT_CUT:Ljava/lang/String; = "tap://moment/scene/"

.field public static final PAGE_USER:Ljava/lang/String; = "tap://moment/user/"

.field public static final PAGE_USER_ID_EXTRA_PARAM:Ljava/lang/String; = "user_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
