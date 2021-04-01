.class public interface abstract Lcom/androidquery/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTIVE_ACCOUNT:Ljava/lang/String; = "aq.account"

.field public static final ANCHOR_DYNAMIC:F = 3.4028235E38f

.field public static final AUTH_ANALYTICS:Ljava/lang/String; = "g.analytics"

.field public static final AUTH_BLOGGER:Ljava/lang/String; = "g.blogger"

.field public static final AUTH_CALENDAR:Ljava/lang/String; = "g.cl"

.field public static final AUTH_CONTACTS:Ljava/lang/String; = "g.cp"

.field public static final AUTH_DOC_LIST:Ljava/lang/String; = "g.writely"

.field public static final AUTH_MAPS:Ljava/lang/String; = "g.local"

.field public static final AUTH_PICASA:Ljava/lang/String; = "g.lh2"

.field public static final AUTH_READER:Ljava/lang/String; = "g.reader"

.field public static final AUTH_SPREADSHEETS:Ljava/lang/String; = "g.wise"

.field public static final AUTH_YOUTUBE:Ljava/lang/String; = "g.youtube"

.field public static final CACHE_DEFAULT:I = 0x0

.field public static final CACHE_PERSISTENT:I = 0x1

.field public static final FADE_IN:I = -0x1

.field public static final FADE_IN_FILE:I = -0x3

.field public static final FADE_IN_NETWORK:I = -0x2

.field public static final FLAG_ACTIVITY_NO_ANIMATION:I = 0x10000

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x1000000

.field public static final GONE:I = -0x2

.field public static final INVISIBLE:I = -0x1

.field public static final LAYER_TYPE_HARDWARE:I = 0x2

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1

.field public static final METHOD_DELETE:I = 0x2

.field public static final METHOD_DETECT:I = 0x4

.field public static final METHOD_GET:I = 0x0

.field public static final METHOD_POST:I = 0x1

.field public static final METHOD_PUT:I = 0x3

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field public static final POST_ENTITY:Ljava/lang/String; = "%entity"

.field public static final PRESET:I = -0x3

.field public static final RATIO_PRESERVE:F = 3.4028235E38f

.field public static final SDK_INT:I

.field public static final TAG_LAYOUT:I = 0x40ff0003

.field public static final TAG_NUM:I = 0x40ff0004

.field public static final TAG_SCROLL_LISTENER:I = 0x40ff0002

.field public static final TAG_URL:I = 0x40ff0001

.field public static final VERSION:Ljava/lang/String; = "0.26.7"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/androidquery/util/Constants;->SDK_INT:I

    return-void
.end method
