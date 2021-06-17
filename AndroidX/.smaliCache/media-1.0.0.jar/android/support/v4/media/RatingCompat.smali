.class public final Landroid/support/v4/media/RatingCompat;
.super Ljava/lang/Object;
.source "RatingCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/RatingCompat$StarStyle;,
        Landroid/support/v4/media/RatingCompat$Style;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/media/RatingCompat;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATING_3_STARS:I = 0x3

.field public static final RATING_4_STARS:I = 0x4

.field public static final RATING_5_STARS:I = 0x5

.field public static final RATING_HEART:I = 0x1

.field public static final RATING_NONE:I = 0x0

.field private static final RATING_NOT_RATED:F = -1.0f

.field public static final RATING_PERCENTAGE:I = 0x6

.field public static final RATING_THUMB_UP_DOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Rating"


# instance fields
.field private mRatingObj:Ljava/lang/Object;

.field private final mRatingStyle:I

.field private final mRatingValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 128
    new-instance v0, Landroid/support/v4/media/RatingCompat$1;

    invoke-direct {v0}, Landroid/support/v4/media/RatingCompat$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IF)V
    .registers 3
    .param p1, "ratingStyle"    # I
    .param p2, "rating"    # F

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    .line 108
    iput p2, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    .line 109
    return-void
.end method

.method public static fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;
    .registers 4
    .param p0, "ratingObj"    # Ljava/lang/Object;

    .line 330
    const/4 v0, 0x0

    if-eqz p0, :cond_54

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_54

    .line 331
    move-object v1, p0

    check-cast v1, Landroid/media/Rating;

    invoke-virtual {v1}, Landroid/media/Rating;->getRatingStyle()I

    move-result v1

    .line 333
    .local v1, "ratingStyle":I
    move-object v2, p0

    check-cast v2, Landroid/media/Rating;

    invoke-virtual {v2}, Landroid/media/Rating;->isRated()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 334
    packed-switch v1, :pswitch_data_56

    .line 352
    return-object v0

    .line 348
    :pswitch_1d
    move-object v0, p0

    check-cast v0, Landroid/media/Rating;

    .line 349
    invoke-virtual {v0}, Landroid/media/Rating;->getPercentRating()F

    move-result v0

    .line 348
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat;->newPercentageRating(F)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    .line 350
    .local v0, "rating":Landroid/support/v4/media/RatingCompat;
    goto :goto_51

    .line 344
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :pswitch_29
    move-object v0, p0

    check-cast v0, Landroid/media/Rating;

    .line 345
    invoke-virtual {v0}, Landroid/media/Rating;->getStarRating()F

    move-result v0

    .line 344
    invoke-static {v1, v0}, Landroid/support/v4/media/RatingCompat;->newStarRating(IF)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    .line 346
    .restart local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    goto :goto_51

    .line 339
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :pswitch_35
    move-object v0, p0

    check-cast v0, Landroid/media/Rating;

    invoke-virtual {v0}, Landroid/media/Rating;->isThumbUp()Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat;->newThumbRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    .line 340
    .restart local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    goto :goto_51

    .line 336
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :pswitch_41
    move-object v0, p0

    check-cast v0, Landroid/media/Rating;

    invoke-virtual {v0}, Landroid/media/Rating;->hasHeart()Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    .line 337
    .restart local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    goto :goto_51

    .line 355
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :cond_4d
    invoke-static {v1}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    .line 357
    .restart local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :goto_51
    iput-object p0, v0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 358
    return-object v0

    .line 360
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    .end local v1    # "ratingStyle":I
    :cond_54
    return-object v0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_41
        :pswitch_35
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_1d
    .end packed-switch
.end method

.method public static newHeartRating(Z)Landroid/support/v4/media/RatingCompat;
    .registers 4
    .param p0, "hasHeart"    # Z

    .line 177
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    if-eqz p0, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0
.end method

.method public static newPercentageRating(F)Landroid/support/v4/media/RatingCompat;
    .registers 3
    .param p0, "percent"    # F

    .line 235
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_13

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_c

    goto :goto_13

    .line 239
    :cond_c
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0

    .line 236
    :cond_13
    :goto_13
    const-string v0, "Rating"

    const-string v1, "Invalid percentage-based rating value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newStarRating(IF)Landroid/support/v4/media/RatingCompat;
    .registers 7
    .param p0, "starRatingStyle"    # I
    .param p1, "starRating"    # F

    .line 205
    const/high16 v0, -0x40800000    # -1.0f

    .line 206
    .local v0, "maxRating":F
    const/4 v1, 0x0

    const-string v2, "Rating"

    packed-switch p0, :pswitch_data_44

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid rating style ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for a star rating"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-object v1

    .line 214
    :pswitch_25
    const/high16 v0, 0x40a00000    # 5.0f

    .line 215
    goto :goto_2e

    .line 211
    :pswitch_28
    const/high16 v0, 0x40800000    # 4.0f

    .line 212
    goto :goto_2e

    .line 208
    :pswitch_2b
    const/high16 v0, 0x40400000    # 3.0f

    .line 209
    nop

    .line 220
    :goto_2e
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_3e

    cmpl-float v3, p1, v0

    if-lez v3, :cond_38

    goto :goto_3e

    .line 224
    :cond_38
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v1

    .line 221
    :cond_3e
    :goto_3e
    const-string v3, "Trying to set out of range star-based rating"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-object v1

    :pswitch_data_44
    .packed-switch 0x3
        :pswitch_2b
        :pswitch_28
        :pswitch_25
    .end packed-switch
.end method

.method public static newThumbRating(Z)Landroid/support/v4/media/RatingCompat;
    .registers 4
    .param p0, "thumbIsUp"    # Z

    .line 188
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    if-eqz p0, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0
.end method

.method public static newUnratedRating(I)Landroid/support/v4/media/RatingCompat;
    .registers 3
    .param p0, "ratingStyle"    # I

    .line 156
    packed-switch p0, :pswitch_data_e

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 163
    :pswitch_5
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    return v0
.end method

.method public getPercentRating()F
    .registers 3

    .line 313
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_f

    .line 316
    :cond_c
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    return v0

    .line 314
    :cond_f
    :goto_f
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getRating()Ljava/lang/Object;
    .registers 3

    .line 373
    iget-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    if-nez v0, :cond_4c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4c

    .line 374
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 375
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    packed-switch v0, :pswitch_data_50

    .line 392
    const/4 v0, 0x0

    return-object v0

    .line 389
    :pswitch_17
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getPercentRating()F

    move-result v0

    invoke-static {v0}, Landroid/media/Rating;->newPercentageRating(F)Landroid/media/Rating;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 390
    goto :goto_4c

    .line 385
    :pswitch_22
    nop

    .line 386
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result v1

    .line 385
    invoke-static {v0, v1}, Landroid/media/Rating;->newStarRating(IF)Landroid/media/Rating;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 387
    goto :goto_4c

    .line 380
    :pswitch_2e
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isThumbUp()Z

    move-result v0

    invoke-static {v0}, Landroid/media/Rating;->newThumbRating(Z)Landroid/media/Rating;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 381
    goto :goto_4c

    .line 377
    :pswitch_39
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    move-result v0

    invoke-static {v0}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 378
    goto :goto_4c

    .line 395
    :cond_44
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-static {v0}, Landroid/media/Rating;->newUnratedRating(I)Landroid/media/Rating;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 398
    :cond_4c
    :goto_4c
    iget-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_39
        :pswitch_2e
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_17
    .end packed-switch
.end method

.method public getRatingStyle()I
    .registers 2

    .line 259
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    return v0
.end method

.method public getStarRating()F
    .registers 2

    .line 294
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    packed-switch v0, :pswitch_data_12

    goto :goto_f

    .line 298
    :pswitch_6
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 299
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    return v0

    .line 303
    :cond_f
    :goto_f
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :pswitch_data_12
    .packed-switch 0x3
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public hasHeart()Z
    .registers 5

    .line 268
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    .line 269
    return v1

    .line 271
    :cond_7
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public isRated()Z
    .registers 3

    .line 248
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isThumbUp()Z
    .registers 4

    .line 281
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    .line 282
    return v1

    .line 284
    :cond_7
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rating:style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_21

    const-string v1, "unrated"

    goto :goto_25

    .line 114
    :cond_21
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 126
    return-void
.end method
