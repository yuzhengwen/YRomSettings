.class public Lcom/android/settings/users/EditUserPhotoController;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/EditUserPhotoController$AdapterItem;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCropPictureUri:Landroid/net/Uri;

.field private final mFragment:Landroid/app/Fragment;

.field private final mImageView:Landroid/widget/ImageView;

.field private mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

.field private mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPhotoSize:I

.field private final mTakePictureUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
    .locals 5
    .param p1    # Landroid/app/Fragment;
    .param p2    # Landroid/widget/ImageView;
    .param p3    # Landroid/graphics/Bitmap;
    .param p4    # Landroid/graphics/drawable/Drawable;
    .param p5    # Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    iput-object p2, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    const-string v4, "CropEditUserPhoto.jpg"

    if-nez p5, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v4, v0}, Lcom/android/settings/users/EditUserPhotoController;->createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    const-string v3, "TakeEditUserPhoto2.jpg"

    if-nez p5, :cond_1

    :goto_1
    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/users/EditUserPhotoController;->createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->getPhotoSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mPhotoSize:I

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/users/EditUserPhotoController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/users/EditUserPhotoController$1;-><init>(Lcom/android/settings/users/EditUserPhotoController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p3, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/users/EditUserPhotoController;)V
    .locals 0
    .param p0    # Lcom/android/settings/users/EditUserPhotoController;

    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->showUpdatePhotoPopup()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/users/EditUserPhotoController;)V
    .locals 0
    .param p0    # Lcom/android/settings/users/EditUserPhotoController;

    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->choosePhoto()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/users/EditUserPhotoController;)V
    .locals 0
    .param p0    # Lcom/android/settings/users/EditUserPhotoController;

    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->takePhoto()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/users/EditUserPhotoController;

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/users/EditUserPhotoController;)I
    .locals 1
    .param p0    # Lcom/android/settings/users/EditUserPhotoController;

    iget v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mPhotoSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/users/EditUserPhotoController;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Lcom/android/settings/users/EditUserPhotoController;

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/users/EditUserPhotoController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0    # Lcom/android/settings/users/EditUserPhotoController;
    .param p1    # Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/users/EditUserPhotoController;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0    # Lcom/android/settings/users/EditUserPhotoController;

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/users/EditUserPhotoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0    # Lcom/android/settings/users/EditUserPhotoController;
    .param p1    # Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/users/EditUserPhotoController;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/settings/users/EditUserPhotoController;

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private appendCropExtras(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v0, "crop"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "scale"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "aspectX"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "aspectY"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "outputX"

    iget v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mPhotoSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "outputY"

    iget v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mPhotoSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method private appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
    .param p2    # Landroid/net/Uri;

    const-string v0, "output"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "output"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    return-void
.end method

.method private canChoosePhoto()Z
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private canTakePhoto()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private choosePhoto()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    const-string v3, "com.android.settings.files"

    invoke-static {p1, v3, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private cropPhoto(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Lcom/android/settings/users/EditUserPhotoController;->appendCropExtras(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/settings/users/EditUserPhotoController;->onPhotoCropped(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private static getPhotoSize(Landroid/content/Context;)I
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private onPhotoCropped(Landroid/net/Uri;Z)V
    .locals 3
    .param p1    # Landroid/net/Uri;
    .param p2    # Z

    new-instance v1, Lcom/android/settings/users/EditUserPhotoController$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/users/EditUserPhotoController$3;-><init>(Lcom/android/settings/users/EditUserPhotoController;ZLandroid/net/Uri;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/users/EditUserPhotoController$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private showUpdatePhotoPopup()V
    .locals 14

    const v13, 0x7f0e002f

    const/4 v12, 0x2

    const/4 v11, 0x1

    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->canTakePhoto()Z

    move-result v2

    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->canChoosePhoto()Z

    move-result v1

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/settings/users/EditUserPhotoController;->canTakePhoto()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f090a13

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v4, Lcom/android/settings/users/EditUserPhotoController$AdapterItem;

    invoke-direct {v4, v7, v12}, Lcom/android/settings/users/EditUserPhotoController$AdapterItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v1, :cond_2

    const v9, 0x7f090a14

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v4, Lcom/android/settings/users/EditUserPhotoController$AdapterItem;

    invoke-direct {v4, v7, v11}, Lcom/android/settings/users/EditUserPhotoController$AdapterItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v6, Landroid/widget/ListPopupWindow;

    invoke-direct {v6, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    invoke-virtual {v6, v11}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    invoke-virtual {v6, v12}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v9, 0x7f040048

    invoke-direct {v0, v3, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v9, p0, Lcom/android/settings/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v6, v9}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    new-instance v9, Lcom/android/settings/users/EditUserPhotoController$2;

    invoke-direct {v9, p0, v5, v6}, Lcom/android/settings/users/EditUserPhotoController$2;-><init>(Lcom/android/settings/users/EditUserPhotoController;Ljava/util/List;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v6, v9}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method private takePhoto()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getNewUserPhotoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/users/EditUserPhotoController;->cropPhoto(Landroid/net/Uri;)V

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v0, v2}, Lcom/android/settings/users/EditUserPhotoController;->onPhotoCropped(Landroid/net/Uri;Z)V

    move v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
