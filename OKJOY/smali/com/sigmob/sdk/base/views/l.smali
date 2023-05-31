.class public final enum Lcom/sigmob/sdk/base/views/l;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/base/views/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/views/l;

.field public static final enum b:Lcom/sigmob/sdk/base/views/l;

.field public static final enum c:Lcom/sigmob/sdk/base/views/l;

.field public static final enum d:Lcom/sigmob/sdk/base/views/l;

.field public static final enum e:Lcom/sigmob/sdk/base/views/l;

.field public static final enum f:Lcom/sigmob/sdk/base/views/l;

.field private static final synthetic i:[Lcom/sigmob/sdk/base/views/l;


# instance fields
.field private final g:Ljava/lang/String;

.field private h:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/views/l;

    const-string v1, "LOADING"

    const-string v2, "iVBORw0KGgoAAAANSUhEUgAAAHsAAAB7CAYAAABUx/9/AAACfklEQVR42u3dUW7qQAwFUPa/A9bCWlgL/asQEnrolbE9c8+V+Gyi+GDiSVLlcgnL4yUXyYAGHgYNHLbAFtgCW2Bn5n6/P54/p2Jfr9fH8yceejV4F/YrdBz4O+iV4B3Y76CjwGHDXgpejf0vaNgLwSuxP4F23g7CNpEvBK/CBg0bdiV4BTboIcPaamxD2aDunoB9kZruXomtq4d1dzc24ULwVdigYcPuBF+BDXrosPZtbEPZ4O7uwCbZ1N3fxNbVG3e3rn7J7XZ7PH9OAd8Vetk+X6GrwDueaNkBe9l+30FXoe+GvfUX7RPsleiwPx8IS7FXoU+BXv4z+gfkNuwK8O6BdSJ02Xm7a4g7Lf+LXDKRQ+9HXjYYQg9ABh4IDT0MGXogMvBAaMu0DZZT09Bhb36LFHbhte2dwNOxjzpoA1rg40uWXp5RExERERERERERGZy/3lz3b6yb1L1qh8B7oH/rXr1D4D3QsGHDhg17f2wDWtCAZullySsiIiIiIiIiIiJtSb2UF3XcydduY449/WJ9zPG7MxNQA7fhAmrhnmtATdxcD6kP6IA6QQ6oG+SQOoIOqCfkEHTIIcu0KcjTvkRHvuppInQ3+LEvcev+yZ52mjj69Yzd52XYxRbTXh08GXvrVyp3DkgrCvvtvz/uZelTlyBdHWHJ2TCQdJ1rXWPYtKt192Fd3YUNvKljOrYJu6l4XdsFDhv0yqJ1bht48bDTjQ28sDO6tw+7sCsmYMeDVxVowj6isSuLM2U/seCwQS8pyqR9RYF3DDPTsGPAJz202PmwIOyDHlyEDdt5e3UBugpvIn9TiNN+TTqOU/ykwoYNW2ALbIEtYWv7afkBhefbcgmFrrkAAAAASUVORK5CYII="

    invoke-direct {v0, v1, v4, v2}, Lcom/sigmob/sdk/base/views/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/base/views/l;->a:Lcom/sigmob/sdk/base/views/l;

    new-instance v0, Lcom/sigmob/sdk/base/views/l;

    const-string v1, "SOUND_MUTE"

    const-string v2, "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"

    invoke-direct {v0, v1, v5, v2}, Lcom/sigmob/sdk/base/views/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/base/views/l;->b:Lcom/sigmob/sdk/base/views/l;

    new-instance v0, Lcom/sigmob/sdk/base/views/l;

    const-string v1, "SOUND_ON"

    const-string v2, "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"

    invoke-direct {v0, v1, v6, v2}, Lcom/sigmob/sdk/base/views/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/base/views/l;->c:Lcom/sigmob/sdk/base/views/l;

    new-instance v0, Lcom/sigmob/sdk/base/views/l;

    const-string v1, "CLOSE"

    const-string v2, "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"

    invoke-direct {v0, v1, v7, v2}, Lcom/sigmob/sdk/base/views/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/base/views/l;->d:Lcom/sigmob/sdk/base/views/l;

    new-instance v0, Lcom/sigmob/sdk/base/views/l;

    const-string v1, "GRAYCLOSE"

    const-string v2, "iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAMAAAAM7l6QAAAAJ1BMVEVHcEw3NzdWVlZRUVFVVVXJycnv7++ampqXl5fMzMz////6+vr6+vqCBLknAAAADXRSTlMAARAeMnK8S0p1/+XjZ7RwtQAAAKBJREFUeNqF00EOAyEIBdABrFj1/udtlCk/1KmykfgiJIqXB7GkESJMvuk4zEMoKoMs+O9RFIBuHBp97bv2p5m+smK/5PdcyUvn2tS11fwtT7alzb0gJesMR2LdJQUPmsQYRU3Bc4FPRQyG9woFo/2O9aG4BNUSXMA3BJf1WkqH80Xh7I/T45N0PMn2QffjcBim8yjCVz1/g/Mnwhc0Y+AHZ9YN/vFQrGwAAAAASUVORK5CYII="

    invoke-direct {v0, v1, v8, v2}, Lcom/sigmob/sdk/base/views/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/base/views/l;->e:Lcom/sigmob/sdk/base/views/l;

    new-instance v0, Lcom/sigmob/sdk/base/views/l;

    const-string v1, "APPICON"

    const/4 v2, 0x5

    const-string v3, "iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAMAAABiM0N1AAAAeFBMVEVHcEwuo5gMKSYvpZpKrKMEEREEEQ8edWUlpJgTQzwhkIY5o5kgfXUhkogfVVA6qZ4voZYtnZM4n5YeamM0k4ompZkln5Qqp5tUs6owqZ0+sKQkm5BJtKkqoJVYurA8p5xmvbV6xr/J5+SW0cu23dr9/f3s9vXb7+2tVwSjAAAAFXRSTlMA/kLq/hooA/0P6kS1JGG8pnDhg75YgU7hAAAEvElEQVR4XqXYiZKqOBQG4EEQAy6g9snCvqj9/m84OZzQIeFOo3d+u5RqU1/9WbS1/9nMYcrGoG3DAf8XckjOOsnhL7FJSY7XPLuFAWNBGGb59Zig9Qk1KdcsKoqikfquwoumKKLsOlkftDnmIQjBGKsKBsCYYEXFQAgR5sd3WyGTNQq0AgBVAZSiAvqVypB6p845B2gUKj4EaKkG8jOO26pzZcCYbrSGKBoCdvVKrZ0kA2AAv0MMIEtcyXfOITAGWxCOCc9WWjtHgXW2IWzNjlZaOY1iYkqjBKUqBKWoBEU1AqMHWmnl9I1J3/kXXb++IGm9PkJRke1G5iKgdfKcJATWCIA31ogiGnHDvfOhDJj4EGLwhZDrXIHBp5Bg/EqSdc7sryAoaZkslGvncwjcyeHOo/MXEAB3z0C2hIQqfoO6QlnIVLJHkWLO2vAafjmQw+uxHC2pEkG5EgrTKUzzfD4fhZoiK0WppHkc9LPVYnSQI2TPop01qG+U1Dw1oQExT009tPMt7GgG6Z4kc4YWEHRW6vrxgRn7Dp1icipnNL/+QJkHQTNJRTUOr+ec19BX5Eiw0LTc8/tuEvmQ6BEYNOfke0CwFx6UJvOeFai456iziIc17jkyR4mWqGArqBr+AxoqH2JwJeiQ/wGyjp/HGsppkQ5ZU5n05rGzzjpD542Wmdm1W1OYdPTg9/ElOY82udGniyT0pzY+f8/o7BoToT6S+nYOPKh5bqVZQKChs4Hc7S/miT3Gb3fnx/mZoXCgNv4jNM5OXUZL6SXL+mGkkfvQempqrjGWZbuEhrYsx7lc4Ewtng7S3l3s7jX3j+r+uWzUBz8NXx1fQnt6qd2WkHjYDtjHoV524ziHH+iWEJQtz1GFg7fzitq2K0wyA+XLk90930sXReaERzJP6LXmvGjfhngtawY6rL4fJihx3kb6N6EeIT5J9cW8aPfh4o1tfBMaJ0hLDNJ4/pKQL6D+gRkef459jhppicEpmaHrAmIlJqpLStSaizYyF4HkFII443cNkRQv/xwxB2qXEMdb7UE0M2duBAH7LwjDud+InxIL7RSlo4e6lkE9UXXU1pQ2wvsgCFoZUFSj8L68EET7ljl/+6XsZETpmkhOt66TJr178bUnhypdaufNv5beYnM9NU5rFNCMdLumrjlQIVvp5H7Qks4acVojzrm/RoyfqJBdpdL76LduNDELSEjgkO6okK105y7EbCN0EELHbcTKOxWySeKT//H4pxGfGxmonhvpicUJAs7k4tT/wM4XjbidGkKANwlpjBNzk+x3qdMIJduIrxvVTbrbUyFPupT+d5HaOZAUhYcVasFUdCHHy0FLnf/tSM7n0F40fSMl/lhnJcWXVAgwjShRyzFOIyzEIL3YBVpLu5R7X0VbetF7a8R4unMdf3a7UwmaslBBm2UhJTmD8rTbe44vxfeUA5MWAgIMBLoR8PQe++vjR0tYyvkHgoUwQuo6mw6VupyiAJgOQWAhxsvy6xKbaW1LmkpLAI1VBYIE6YcyPV1irIPQdpDa3bXFgb4cA+jtL7Vy38Vune1WaF3up6/b7RaG+u7rdL+g4jHbFFlao2iDFGI+tTQ2cXtMgop1PuYwbxT5F5RDYLHX81i6AAAAAElFTkSuQmCC"

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/views/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/base/views/l;->f:Lcom/sigmob/sdk/base/views/l;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sigmob/sdk/base/views/l;

    sget-object v1, Lcom/sigmob/sdk/base/views/l;->a:Lcom/sigmob/sdk/base/views/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/sdk/base/views/l;->b:Lcom/sigmob/sdk/base/views/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sigmob/sdk/base/views/l;->c:Lcom/sigmob/sdk/base/views/l;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sigmob/sdk/base/views/l;->d:Lcom/sigmob/sdk/base/views/l;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sigmob/sdk/base/views/l;->e:Lcom/sigmob/sdk/base/views/l;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sigmob/sdk/base/views/l;->f:Lcom/sigmob/sdk/base/views/l;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sigmob/sdk/base/views/l;->i:[Lcom/sigmob/sdk/base/views/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sigmob/sdk/base/views/l;->g:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/views/l;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/views/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/views/l;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/base/views/l;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/views/l;->i:[Lcom/sigmob/sdk/base/views/l;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/views/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/views/l;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/l;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/l;->g:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/l;->h:Landroid/graphics/Bitmap;

    :cond_12
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/l;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method
